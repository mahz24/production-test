// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future exportCSV(
  String? collectionPath,
  String? key,
) async {
  // Null default
  collectionPath = collectionPath ?? '';
  key = key ?? '';

  // Firebase collection definition
  // var db = FirebaseFirestore.instance;
  // var collection = db.collection(collectionPath);
  // var query = await collection.get();
  // final docRef = db.collection(collectionPath).where("id", isEqualTo: true);

  // Get keys document
  // docRef.get().then((docs) {
  //   final keys = docs.docs[0].keys.toList();

  //   //File CSV build
  //   String fileContent = keys.join(", ");
  //   for (var doc in query.docs) {
  //     fileContent = fileContent + "\n";
  //     for (int i = 0; i < keys.length; i++) {
  //       fileContent = fileContent + doc.keys[i].toString() + ",";
  //     }
  //   }

  //   //Download file
  //   final fileName = "data.csv";
  //   var bytes = utf8.encode(fileContent);
  //   final stream = Stream.fromIterable(bytes);
  //   return download(stream, fileName);
  // }, onError: (e) => print("Error gettin document: $e"));
}
