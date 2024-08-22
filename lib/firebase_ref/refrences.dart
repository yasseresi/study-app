import 'package:cloud_firestore/cloud_firestore.dart';

final fireStore = FirebaseFirestore.instance;
final questionPaperRF = fireStore.collection("questionPapers");

DocumentReference questionRef({required paperId, required questionId}) =>
    questionPaperRF.doc(paperId).collection("questions").doc(questionId);
