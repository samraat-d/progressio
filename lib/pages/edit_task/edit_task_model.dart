import '/flutter_flow/flutter_flow_util.dart';
import 'edit_task_widget.dart' show EditTaskWidget;
import 'package:flutter/material.dart';

class EditTaskModel extends FlutterFlowModel<EditTaskWidget> {
  ///  Local state fields for this page.

  DateTime? time;

  DateTime? date;

  DocumentReference? labelid;

  ///  State fields for stateful widgets in this page.

  // State field(s) for tasktitle widget.
  FocusNode? tasktitleFocusNode;
  TextEditingController? tasktitleTextController;
  String? Function(BuildContext, String?)? tasktitleTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tasktitleFocusNode?.dispose();
    tasktitleTextController?.dispose();
  }
}
