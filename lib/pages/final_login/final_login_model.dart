import '/flutter_flow/flutter_flow_util.dart';
import 'final_login_widget.dart' show FinalLoginWidget;
import 'package:flutter/material.dart';

class FinalLoginModel extends FlutterFlowModel<FinalLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for signup-name widget.
  FocusNode? signupNameFocusNode;
  TextEditingController? signupNameTextController;
  String? Function(BuildContext, String?)? signupNameTextControllerValidator;
  // State field(s) for signup-email widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  // State field(s) for signup-password widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  // State field(s) for signup-confirm widget.
  FocusNode? signupConfirmFocusNode;
  TextEditingController? signupConfirmTextController;
  late bool signupConfirmVisibility;
  String? Function(BuildContext, String?)? signupConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    signupPasswordVisibility = false;
    signupConfirmVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    signupNameFocusNode?.dispose();
    signupNameTextController?.dispose();

    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    signupConfirmFocusNode?.dispose();
    signupConfirmTextController?.dispose();
  }
}
