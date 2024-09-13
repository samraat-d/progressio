import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_task_widget.dart' show CreateTaskWidget;
import 'package:flutter/material.dart';

class CreateTaskModel extends FlutterFlowModel<CreateTaskWidget> {
  ///  Local state fields for this page.

  DateTime? time;

  DateTime? date;

  DocumentReference? labelid;

  LabelsRecord? labelsdoc;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for tasktitle widget.
  FocusNode? tasktitleFocusNode;
  TextEditingController? tasktitleTextController;
  String? Function(BuildContext, String?)? tasktitleTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tasktitleFocusNode?.dispose();
    tasktitleTextController?.dispose();
  }
}
