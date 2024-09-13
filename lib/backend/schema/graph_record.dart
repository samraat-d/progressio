import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GraphRecord extends FirestoreRecord {
  GraphRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "pid" field.
  DocumentReference? _pid;
  DocumentReference? get pid => _pid;
  bool hasPid() => _pid != null;

  // "progress" field.
  double? _progress;
  double get progress => _progress ?? 0.0;
  bool hasProgress() => _progress != null;

  // "timedate" field.
  int? _timedate;
  int get timedate => _timedate ?? 0;
  bool hasTimedate() => _timedate != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _pid = snapshotData['pid'] as DocumentReference?;
    _progress = castToType<double>(snapshotData['progress']);
    _timedate = castToType<int>(snapshotData['timedate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('graph');

  static Stream<GraphRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GraphRecord.fromSnapshot(s));

  static Future<GraphRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GraphRecord.fromSnapshot(s));

  static GraphRecord fromSnapshot(DocumentSnapshot snapshot) => GraphRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GraphRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GraphRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GraphRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GraphRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGraphRecordData({
  DocumentReference? uid,
  DocumentReference? pid,
  double? progress,
  int? timedate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'pid': pid,
      'progress': progress,
      'timedate': timedate,
    }.withoutNulls,
  );

  return firestoreData;
}

class GraphRecordDocumentEquality implements Equality<GraphRecord> {
  const GraphRecordDocumentEquality();

  @override
  bool equals(GraphRecord? e1, GraphRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.pid == e2?.pid &&
        e1?.progress == e2?.progress &&
        e1?.timedate == e2?.timedate;
  }

  @override
  int hash(GraphRecord? e) =>
      const ListEquality().hash([e?.uid, e?.pid, e?.progress, e?.timedate]);

  @override
  bool isValidKey(Object? o) => o is GraphRecord;
}
