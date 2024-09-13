import '/flutter_flow/flutter_flow_util.dart';
import 'new_password_widget.dart' show NewPasswordWidget;
import 'package:flutter/material.dart';

class NewPasswordModel extends FlutterFlowModel<NewPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for oldpass widget.
  FocusNode? oldpassFocusNode;
  TextEditingController? oldpassTextController;
  late bool oldpassVisibility;
  String? Function(BuildContext, String?)? oldpassTextControllerValidator;
  // State field(s) for newpass widget.
  FocusNode? newpassFocusNode;
  TextEditingController? newpassTextController;
  late bool newpassVisibility;
  String? Function(BuildContext, String?)? newpassTextControllerValidator;
  // Stores action output result for [Custom Action - changePassword] action in Button widget.
  int? confirmint;

  @override
  void initState(BuildContext context) {
    oldpassVisibility = false;
    newpassVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    oldpassFocusNode?.dispose();
    oldpassTextController?.dispose();

    newpassFocusNode?.dispose();
    newpassTextController?.dispose();
  }
}
