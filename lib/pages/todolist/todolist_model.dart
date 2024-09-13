import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'todolist_widget.dart' show TodolistWidget;
import 'package:flutter/material.dart';

class TodolistModel extends FlutterFlowModel<TodolistWidget> {
  ///  Local state fields for this page.

  DocumentReference? selectedProject;

  LabelsRecord? lablesdoc;

  DocumentReference? taskdoc;

  LabelsRecord? labellist;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in todolist widget.
  ProjectsRecord? initialproject;
  // Stores action output result for [Firestore Query - Query a collection] action in todolist widget.
  LabelsRecord? initiallabel;
  // Stores action output result for [Firestore Query - Query a collection] action in todolist widget.
  List<LabelsRecord>? labelslist;
  // Stores action output result for [Backend Call - Create Document] action in todolist widget.
  LabelsRecord? startlabel;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProjectsRecord? projref;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<GraphRecord>? graphlist;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
