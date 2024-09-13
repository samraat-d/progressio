// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProgessStruct extends FFFirebaseStruct {
  ProgessStruct({
    int? tasksCompleted,
    int? tasksCreated,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tasksCompleted = tasksCompleted,
        _tasksCreated = tasksCreated,
        super(firestoreUtilData);

  // "tasks_completed" field.
  int? _tasksCompleted;
  int get tasksCompleted => _tasksCompleted ?? 0;
  set tasksCompleted(int? val) => _tasksCompleted = val;

  void incrementTasksCompleted(int amount) =>
      tasksCompleted = tasksCompleted + amount;

  bool hasTasksCompleted() => _tasksCompleted != null;

  // "tasks_created" field.
  int? _tasksCreated;
  int get tasksCreated => _tasksCreated ?? 0;
  set tasksCreated(int? val) => _tasksCreated = val;

  void incrementTasksCreated(int amount) =>
      tasksCreated = tasksCreated + amount;

  bool hasTasksCreated() => _tasksCreated != null;

  static ProgessStruct fromMap(Map<String, dynamic> data) => ProgessStruct(
        tasksCompleted: castToType<int>(data['tasks_completed']),
        tasksCreated: castToType<int>(data['tasks_created']),
      );

  static ProgessStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProgessStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tasks_completed': _tasksCompleted,
        'tasks_created': _tasksCreated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tasks_completed': serializeParam(
          _tasksCompleted,
          ParamType.int,
        ),
        'tasks_created': serializeParam(
          _tasksCreated,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProgessStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProgessStruct(
        tasksCompleted: deserializeParam(
          data['tasks_completed'],
          ParamType.int,
          false,
        ),
        tasksCreated: deserializeParam(
          data['tasks_created'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProgessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProgessStruct &&
        tasksCompleted == other.tasksCompleted &&
        tasksCreated == other.tasksCreated;
  }

  @override
  int get hashCode => const ListEquality().hash([tasksCompleted, tasksCreated]);
}

ProgessStruct createProgessStruct({
  int? tasksCompleted,
  int? tasksCreated,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProgessStruct(
      tasksCompleted: tasksCompleted,
      tasksCreated: tasksCreated,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProgessStruct? updateProgessStruct(
  ProgessStruct? progess, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    progess
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProgessStructData(
  Map<String, dynamic> firestoreData,
  ProgessStruct? progess,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (progess == null) {
    return;
  }
  if (progess.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && progess.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final progessData = getProgessFirestoreData(progess, forFieldValue);
  final nestedData = progessData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = progess.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProgessFirestoreData(
  ProgessStruct? progess, [
  bool forFieldValue = false,
]) {
  if (progess == null) {
    return {};
  }
  final firestoreData = mapToFirestore(progess.toMap());

  // Add any Firestore field values
  progess.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProgessListFirestoreData(
  List<ProgessStruct>? progesss,
) =>
    progesss?.map((e) => getProgessFirestoreData(e, true)).toList() ?? [];
