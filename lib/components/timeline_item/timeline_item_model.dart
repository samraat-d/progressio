import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'timeline_item_widget.dart' show TimelineItemWidget;
import 'package:flutter/material.dart';

class TimelineItemModel extends FlutterFlowModel<TimelineItemWidget> {
  ///  Local state fields for this component.

  TasksRecord? deadlinedate;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in timeline_item widget.
  LabelsRecord? labeldoc;
  // Stores action output result for [Backend Call - Read Document] action in timeline_item widget.
  ProjectsRecord? projectdoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
