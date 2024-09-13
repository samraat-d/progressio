import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "project_color" field.
  Color? _projectColor;
  Color? get projectColor => _projectColor;
  bool hasProjectColor() => _projectColor != null;

  // "tasks_completed" field.
  int? _tasksCompleted;
  int get tasksCompleted => _tasksCompleted ?? 0;
  bool hasTasksCompleted() => _tasksCompleted != null;

  // "progess" field.
  int? _progess;
  int get progess => _progess ?? 0;
  bool hasProgess() => _progess != null;

  // "num_tasks" field.
  int? _numTasks;
  int get numTasks => _numTasks ?? 0;
  bool hasNumTasks() => _numTasks != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _projectName = snapshotData['project_name'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _projectColor = getSchemaColor(snapshotData['project_color']);
    _tasksCompleted = castToType<int>(snapshotData['tasks_completed']);
    _progess = castToType<int>(snapshotData['progess']);
    _numTasks = castToType<int>(snapshotData['num_tasks']);
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  String? projectName,
  DocumentReference? uid,
  Color? projectColor,
  int? tasksCompleted,
  int? progess,
  int? numTasks,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'project_name': projectName,
      'uid': uid,
      'project_color': projectColor,
      'tasks_completed': tasksCompleted,
      'progess': progess,
      'num_tasks': numTasks,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    return e1?.projectName == e2?.projectName &&
        e1?.uid == e2?.uid &&
        e1?.projectColor == e2?.projectColor &&
        e1?.tasksCompleted == e2?.tasksCompleted &&
        e1?.progess == e2?.progess &&
        e1?.numTasks == e2?.numTasks &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ProjectsRecord? e) => const ListEquality().hash([
        e?.projectName,
        e?.uid,
        e?.projectColor,
        e?.tasksCompleted,
        e?.progess,
        e?.numTasks,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
