import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:study_application/firebase_ref/refrences.dart';
import 'package:study_application/models/question_paper_model.dart';
import 'package:study_application/services/firebase_storage_services.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = [].obs;
  final allPaper = <QuestionPaperModel>[].obs;
  @override
  void onReady() {
    getAllPagers();
    print(allPaperImages.toString());
    super.onReady();
  }

  Future<void> getAllPagers() async {
    List<String> imageNames = ['biology', 'chemistry', 'maths', 'physics'];
    try {
      //quesrySnapshot is the object cotain all the documents
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();
      // craete models form the documents
      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();

      allPaper.assignAll(paperList);

      FirebaseStorageServices _controller = Get.find();
      for (var paper in paperList) {
        final imgUrl = await _controller.getImage(paper.title);
        print("the image url is : $imgUrl");
        paper.imageUrl = imgUrl!;

        // await questionPaperRF.doc(paper.id).update({'imgUrl' : imgUrl});
      }

      allPaper.assignAll(paperList);
    } catch (e) {
      print(e);
    }
  }
}
