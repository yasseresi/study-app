import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import '../firebase_ref/refrences.dart';


class FirebaseStorageServices extends GetxService {
  Future<String?> getImage(String? imageName) async {
    if (imageName == null) return null;
    try {
      var urlRef = firebaseStorage
          .child('question_paper_images')
          .child("${imageName.toLowerCase()}.png");
      String? imgUrl = await urlRef.getDownloadURL();
      print('inside the service the $imageName is : $imgUrl');
      return imgUrl;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
