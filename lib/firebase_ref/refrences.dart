import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final fireStore = FirebaseFirestore.instance;
final questionPaperRF = fireStore.collection("questionPapers");

DocumentReference questionRef({required paperId, required questionId}) =>
    questionPaperRF.doc(paperId).collection("questions").doc(questionId);


Reference get firebaseStorage => FirebaseStorage.instance.ref();