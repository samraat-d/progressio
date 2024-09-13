import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "pid" field.
  DocumentReference? _pid;
  DocumentReference? get pid => _pid;
  bool hasPid() => _pid != null;

  // "label_id" field.
  DocumentReference? _labelId;
  DocumentReference? get labelId => _labelId;
  bool hasLabelId() => _labelId != null;

  // "deadline_date" field.
  DateTime? _deadlineDate;
  DateTime? get deadlineDate => _deadlineDate;
  bool hasDeadlineDate() => _deadlineDate != null;

  // "deadline_time" field.
  DateTime? _deadlineTime;
  DateTime? get deadlineTime => _deadlineTime;
  bool hasDeadlineTime() => _deadlineTime != null;

  // "priority" field.
  int? _priority;
  int get priority => _priority ?? 0;
  bool hasPriority() => _priority != null;

  // "task_id" field.
  String? _taskId;
  String get taskId => _taskId ?? '';
  bool hasTaskId() => _taskId != null;

  // "isCompleted" field.
  bool? _isCompleted;
  bool get isCompleted => _isCompleted ?? false;
  bool hasIsCompleted() => _isCompleted != null;

  void _initializeFields() {
    _taskName = snapshotData['task_name'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _pid = snapshotData['pid'] as DocumentReference?;
    _labelId = snapshotData['label_id'] as DocumentReference?;
    _deadlineDate = snapshotData['deadline_date'] as DateTime?;
    _deadlineTime = snapshotData['deadline_time'] as DateTime?;
    _priority = castToType<int>(snapshotData['priority']);
    _taskId = snapshotData['task_id'] as String?;
    _isCompleted = snapshotData['isCompleted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? taskName,
  DocumentReference? uid,
  DocumentReference? pid,
  DocumentReference? labelId,
  DateTime? deadlineDate,
  DateTime? deadlineTime,
  int? priority,
  String? taskId,
  bool? isCompleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_name': taskName,
      'uid': uid,
      'pid': pid,
      'label_id': labelId,
      'deadline_date': deadlineDate,
      'deadline_time': deadlineTime,
      'priority': priority,
      'task_id': taskId,
      'isCompleted': isCompleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.taskName == e2?.taskName &&
        e1?.uid == e2?.uid &&
        e1?.pid == e2?.pid &&
        e1?.labelId == e2?.labelId &&
        e1?.deadlineDate == e2?.deadlineDate &&
        e1?.deadlineTime == e2?.deadlineTime &&
        e1?.priority == e2?.priority &&
        e1?.taskId == e2?.taskId &&
        e1?.isCompleted == e2?.isCompleted;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.taskName,
        e?.uid,
        e?.pid,
        e?.labelId,
        e?.deadlineDate,
        e?.deadlineTime,
        e?.priority,
        e?.taskId,
        e?.isCompleted
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
