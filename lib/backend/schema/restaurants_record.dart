import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantsRecord extends FirestoreRecord {
  RestaurantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "categorie" field.
  DocumentReference? _categorie;
  DocumentReference? get categorie => _categorie;
  bool hasCategorie() => _categorie != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _photo = snapshotData['photo'] as String?;
    _adresse = snapshotData['adresse'] as String?;
    _contact = snapshotData['contact'] as String?;
    _description = snapshotData['description'] as String?;
    _categorie = snapshotData['categorie'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurants');

  static Stream<RestaurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantsRecord.fromSnapshot(s));

  static Future<RestaurantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantsRecord.fromSnapshot(s));

  static RestaurantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantsRecordData({
  String? nom,
  String? photo,
  String? adresse,
  String? contact,
  String? description,
  DocumentReference? categorie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'photo': photo,
      'adresse': adresse,
      'contact': contact,
      'description': description,
      'categorie': categorie,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantsRecordDocumentEquality implements Equality<RestaurantsRecord> {
  const RestaurantsRecordDocumentEquality();

  @override
  bool equals(RestaurantsRecord? e1, RestaurantsRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.photo == e2?.photo &&
        e1?.adresse == e2?.adresse &&
        e1?.contact == e2?.contact &&
        e1?.description == e2?.description &&
        e1?.categorie == e2?.categorie;
  }

  @override
  int hash(RestaurantsRecord? e) => const ListEquality().hash(
      [e?.nom, e?.photo, e?.adresse, e?.contact, e?.description, e?.categorie]);

  @override
  bool isValidKey(Object? o) => o is RestaurantsRecord;
}
