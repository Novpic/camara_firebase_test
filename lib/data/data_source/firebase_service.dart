import 'dart:io';

import 'package:camara_firebase_test/data/models/photo_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FireBaseService {
  FirebaseFirestore dbFirebase = FirebaseFirestore.instance;
  FirebaseStorage dbFirebaseStorege = FirebaseStorage.instance;

  Stream<List<PhotoModel>> getPhotos() {
    return dbFirebase.collection('photos').snapshots().map((querySnapshot) {
      return querySnapshot.docs
          .map((e) => PhotoModel.fromJson(e.data()))
          .toList();
    });
  }

  Future<void> uploadPhoto(PhotoModel photo) async {
    final ref = dbFirebaseStorege.ref().child(photo.timeStamp.toString());
    final file = File(photo.url);
    final uploadTask = ref.putFile(file);

    final snapShot = await uploadTask.whenComplete(() {});
    final urlDownload = await snapShot.ref.getDownloadURL();
    await dbFirebase.collection('photos').add(
      {
        'timeStamp': photo.timeStamp,
        'url': urlDownload,
      },
    );
  }
}

final fireBaseService = Provider((ref) => FireBaseService());
