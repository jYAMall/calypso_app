import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QrCodesRecord extends FirestoreRecord {
  QrCodesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  bool hasValue() => _value != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _value = castToType<int>(snapshotData['value']);
    _userId = snapshotData['userId'] as String?;
    _category = snapshotData['category'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('qr_codes');

  static Stream<QrCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QrCodesRecord.fromSnapshot(s));

  static Future<QrCodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QrCodesRecord.fromSnapshot(s));

  static QrCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QrCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QrCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QrCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QrCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QrCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQrCodesRecordData({
  String? code,
  String? imageUrl,
  int? value,
  String? userId,
  String? category,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'imageUrl': imageUrl,
      'value': value,
      'userId': userId,
      'category': category,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class QrCodesRecordDocumentEquality implements Equality<QrCodesRecord> {
  const QrCodesRecordDocumentEquality();

  @override
  bool equals(QrCodesRecord? e1, QrCodesRecord? e2) {
    return e1?.code == e2?.code &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.value == e2?.value &&
        e1?.userId == e2?.userId &&
        e1?.category == e2?.category &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(QrCodesRecord? e) => const ListEquality().hash(
      [e?.code, e?.imageUrl, e?.value, e?.userId, e?.category, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is QrCodesRecord;
}
