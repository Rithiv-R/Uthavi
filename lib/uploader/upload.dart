import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class Upload {
  static UploadTask? uploadFile(String destination, File file) {
    try {
      print('s');
      final ref = FirebaseStorage.instance.ref(destination);
      return ref.putFile(file);
    } on FirebaseException catch (e) {
      return null;
    }
  }
}
