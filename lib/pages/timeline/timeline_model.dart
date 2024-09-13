import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'timeline_widget.dart' show TimelineWidget;
import 'package:flutter/material.dart';

class TimelineModel extends FlutterFlowModel<TimelineWidget> {
  ///  Local state fields for this page.

  DateTime? daystart;

  DateTime? dayend;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
