import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'graph_widget.dart' show GraphWidget;
import 'package:flutter/material.dart';

class GraphModel extends FlutterFlowModel<GraphWidget> {
  ///  Local state fields for this page.

  DocumentReference? selectedproject;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Graph widget.
  ProjectsRecord? project;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
