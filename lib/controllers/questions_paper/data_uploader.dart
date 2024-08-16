import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    // TODO: implement onReady
    super.onReady();
  }

  Future<void> uploadData() async {
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");
    final Map<String, dynamic> manfiestMap = json.decode(manifestContent);
    //load json files and print paths 
    final papersInAssets =  manfiestMap.keys
        .where(
          (path) =>
              path.startsWith("assets/DB/papers") && path.contains(".json"),
        )
        .toList();

    print(papersInAssets);
    final QuestionPaper = <String,dynamic>{};
    for(var paper in papersInAssets){
      String stringPaperContent = await rootBundle.loadString(paper);
      
    }
  }
}
