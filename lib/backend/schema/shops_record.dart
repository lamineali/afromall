import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopsRecord extends FirestoreRecord {
  ShopsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "telephone" field.
  String? _telephone;
  String get telephone => _telephone ?? '';
  bool hasTelephone() => _telephone != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phone = snapshotData['phone'] as String?;
    _adresse = snapshotData['adresse'] as String?;
    _telephone = snapshotData['telephone'] as String?;
    _categorie = snapshotData['categorie'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shops');

  static Stream<ShopsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopsRecord.fromSnapshot(s));

  static Future<ShopsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopsRecord.fromSnapshot(s));

  static ShopsRecord fromSnapshot(DocumentSnapshot snapshot) => ShopsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopsRecordData({
  String? name,
  String? phone,
  String? adresse,
  String? telephone,
  String? categorie,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone': phone,
      'adresse': adresse,
      'telephone': telephone,
      'categorie': categorie,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopsRecordDocumentEquality implements Equality<ShopsRecord> {
  const ShopsRecordDocumentEquality();

  @override
  bool equals(ShopsRecord? e1, ShopsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phone == e2?.phone &&
        e1?.adresse == e2?.adresse &&
        e1?.telephone == e2?.telephone &&
        e1?.categorie == e2?.categorie &&
        e1?.description == e2?.description;
  }

  @override
  int hash(ShopsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.phone,
        e?.adresse,
        e?.telephone,
        e?.categorie,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is ShopsRecord;
}
