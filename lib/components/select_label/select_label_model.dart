import '/backend/backend.dart';
import '/components/smalllabelcard/smalllabelcard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_label_widget.dart' show SelectLabelWidget;
import 'package:flutter/material.dart';

class SelectLabelModel extends FlutterFlowModel<SelectLabelWidget> {
  ///  Local state fields for this component.

  int? prioritynumber = 5;

  DocumentReference? labellist;

  ///  State fields for stateful widgets in this component.

  // Models for smalllabelcard dynamic component.
  late FlutterFlowDynamicModels<SmalllabelcardModel> smalllabelcardModels;
  // Stores action output result for [Backend Call - Read Document] action in smalllabelcard widget.
  LabelsRecord? chosenlabel;

  @override
  void initState(BuildContext context) {
    smalllabelcardModels =
        FlutterFlowDynamicModels(() => SmalllabelcardModel());
  }

  @override
  void dispose() {
    smalllabelcardModels.dispose();
  }
}
