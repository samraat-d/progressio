import '/flutter_flow/flutter_flow_util.dart';
import 'create_project_widget.dart' show CreateProjectWidget;
import 'package:flutter/material.dart';

class CreateProjectModel extends FlutterFlowModel<CreateProjectWidget> {
  ///  Local state fields for this component.

  Color? colorpicked = const Color(0xff00ebff);

  ///  State fields for stateful widgets in this component.

  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  Color? colorPicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();
  }
}
