import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_label_widget.dart' show CreateLabelWidget;
import 'package:flutter/material.dart';

class CreateLabelModel extends FlutterFlowModel<CreateLabelWidget> {
  ///  Local state fields for this component.

  Color? colorpicked = const Color(0xff00ebff);

  ///  State fields for stateful widgets in this component.

  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  Color? colorPicked;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LabelsRecord? newlabel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();
  }
}
