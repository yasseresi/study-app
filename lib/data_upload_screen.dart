


import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:study_application/controllers/questions_paper/data_uploader.dart';

class DataUploadScreen extends StatelessWidget {
  DataUploadScreen({super.key});
  DataUploader controller = Get.put(DataUploader());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Uploading"),
      ),
    );
  }
}