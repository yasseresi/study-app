import 'package:get/get.dart';
import 'package:study_application/services/firebase_storage_services.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = [].obs;

  @override
  void onReady() {
    getAllPagers();
    print(allPaperImages.toString());
    super.onReady();
  }

  Future<void> getAllPagers() async {
    List<String> imageNames = ['biology', 'chemistry', 'maths', 'physics'];
    try {
      FirebaseStorageServices _controller = Get.find();
      for (var img in imageNames) {
      final imgUrl = await _controller.getImage(img);
      if (imgUrl != null) {
        print('add the ${img} which has the url : $imgUrl');
        allPaperImages.add(imgUrl);
      } else {
        print('Failed to get the URL for ${img}');
      }
      }
    } catch (e) {
      print(e);
    }
  }
}
