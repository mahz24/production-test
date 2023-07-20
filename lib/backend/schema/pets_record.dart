import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetsRecord extends FirestoreRecord {
  PetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type-animal" field.
  String? _typeAnimal;
  String get typeAnimal => _typeAnimal ?? '';
  bool hasTypeAnimal() => _typeAnimal != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _typeAnimal = snapshotData['type-animal'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pets');

  static Stream<PetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PetsRecord.fromSnapshot(s));

  static Future<PetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PetsRecord.fromSnapshot(s));

  static PetsRecord fromSnapshot(DocumentSnapshot snapshot) => PetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPetsRecordData({
  String? name,
  String? typeAnimal,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type-animal': typeAnimal,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class PetsRecordDocumentEquality implements Equality<PetsRecord> {
  const PetsRecordDocumentEquality();

  @override
  bool equals(PetsRecord? e1, PetsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.typeAnimal == e2?.typeAnimal &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(PetsRecord? e) =>
      const ListEquality().hash([e?.name, e?.typeAnimal, e?.owner]);

  @override
  bool isValidKey(Object? o) => o is PetsRecord;
}
