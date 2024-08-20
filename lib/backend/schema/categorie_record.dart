import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategorieRecord extends FirestoreRecord {
  CategorieRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _description = snapshotData['description'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorie');

  static Stream<CategorieRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategorieRecord.fromSnapshot(s));

  static Future<CategorieRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategorieRecord.fromSnapshot(s));

  static CategorieRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategorieRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategorieRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategorieRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategorieRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategorieRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategorieRecordData({
  String? nom,
  String? description,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'description': description,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategorieRecordDocumentEquality implements Equality<CategorieRecord> {
  const CategorieRecordDocumentEquality();

  @override
  bool equals(CategorieRecord? e1, CategorieRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.description == e2?.description &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(CategorieRecord? e) =>
      const ListEquality().hash([e?.nom, e?.description, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is CategorieRecord;
}
