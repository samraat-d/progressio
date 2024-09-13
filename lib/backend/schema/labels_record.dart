import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LabelsRecord extends FirestoreRecord {
  LabelsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "label_id" field.
  String? _labelId;
  String get labelId => _labelId ?? '';
  bool hasLabelId() => _labelId != null;

  // "label_name" field.
  String? _labelName;
  String get labelName => _labelName ?? '';
  bool hasLabelName() => _labelName != null;

  // "label_color" field.
  Color? _labelColor;
  Color? get labelColor => _labelColor;
  bool hasLabelColor() => _labelColor != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _labelId = snapshotData['label_id'] as String?;
    _labelName = snapshotData['label_name'] as String?;
    _labelColor = getSchemaColor(snapshotData['label_color']);
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('labels');

  static Stream<LabelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LabelsRecord.fromSnapshot(s));

  static Future<LabelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LabelsRecord.fromSnapshot(s));

  static LabelsRecord fromSnapshot(DocumentSnapshot snapshot) => LabelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LabelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LabelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LabelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LabelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLabelsRecordData({
  String? labelId,
  String? labelName,
  Color? labelColor,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'label_id': labelId,
      'label_name': labelName,
      'label_color': labelColor,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class LabelsRecordDocumentEquality implements Equality<LabelsRecord> {
  const LabelsRecordDocumentEquality();

  @override
  bool equals(LabelsRecord? e1, LabelsRecord? e2) {
    return e1?.labelId == e2?.labelId &&
        e1?.labelName == e2?.labelName &&
        e1?.labelColor == e2?.labelColor &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(LabelsRecord? e) => const ListEquality()
      .hash([e?.labelId, e?.labelName, e?.labelColor, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is LabelsRecord;
}
