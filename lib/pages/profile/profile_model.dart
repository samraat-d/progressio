import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;
  // State field(s) for contact widget.
  FocusNode? contactFocusNode;
  TextEditingController? contactTextController;
  String? Function(BuildContext, String?)? contactTextControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for Profession widget.
  FocusNode? professionFocusNode;
  TextEditingController? professionTextController;
  String? Function(BuildContext, String?)? professionTextControllerValidator;
  // State field(s) for Links widget.
  FocusNode? linksFocusNode;
  TextEditingController? linksTextController;
  String? Function(BuildContext, String?)? linksTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();

    contactFocusNode?.dispose();
    contactTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    professionFocusNode?.dispose();
    professionTextController?.dispose();

    linksFocusNode?.dispose();
    linksTextController?.dispose();
  }
}
