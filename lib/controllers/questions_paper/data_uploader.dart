import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:study_application/firebase_ref/refrences.dart';
import 'package:study_application/models/question_paper_model.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    // TODO: implement onReady
    super.onReady();
  }

  Future<void> uploadData() async {
    final fireStore = FirebaseFirestore.instance;
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");
    final Map<String, dynamic> manfiestMap = json.decode(manifestContent);
    //load json files and print paths
    final papersInAssets = manfiestMap.keys
        .where(
          (path) =>
              path.startsWith("assets/DB/papers") && path.contains(".json"),
        )
        .toList();

    print(papersInAssets);
    final List<QuestionPaperModel> QuestionPaper = [];
    // this is to upload all the json files to the list
    for (var paper in papersInAssets) {
      // string paper content is the content of the file as a String
      String stringPaperContent = await rootBundle.loadString(paper);
      // this create the model from a map after make the String file as a map then add it to the list
      QuestionPaper.add(
        QuestionPaperModel.fromJson(
          json.decode(stringPaperContent),
        ),
      );
      var batch = fireStore.batch();

      // adding the documents to the question collection
      for (var paper in QuestionPaper) {
        batch.set(questionPaperRF.doc(paper.id), {
          'title': paper.title,
          'description': paper.description,
          'image_url': paper.imageUrl,
          'time_seconds': paper.timeSeconds,
          'questions_count':
              paper.questions == null ? 0 : paper.questions!.length
        });
        //adding the questions collection  to each doc
        for (var question in paper.questions!) {
          final questionPath =
              questionRef(paperId: paper.id, questionId: question.id);
          batch.set(questionPath, {
            'question': question.question,
            'correct_answer': question.correctAnswer,
            'answers_count': question.answers.length,
          });

          for (var answer in question.answers) {
            batch.set(
                questionPath.collection('answers').doc(answer.identifier), {
              'identifier': answer.identifier,
              'answer': answer.answer,
            });
          }
        }
      }
      await batch.commit();
    }
  }
}
