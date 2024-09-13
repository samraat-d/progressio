import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'edit_task_priority_model.dart';
export 'edit_task_priority_model.dart';

class EditTaskPriorityWidget extends StatefulWidget {
  const EditTaskPriorityWidget({
    super.key,
    required this.date,
    required this.time,
    required this.chosenproject,
    required this.labeldocs,
    int? priority,
  }) : priority = priority ?? 5;

  final DateTime? date;
  final DateTime? time;
  final DocumentReference? chosenproject;
  final LabelsRecord? labeldocs;
  final int priority;

  @override
  State<EditTaskPriorityWidget> createState() => _EditTaskPriorityWidgetState();
}

class _EditTaskPriorityWidgetState extends State<EditTaskPriorityWidget> {
  late EditTaskPriorityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditTaskPriorityModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 400.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: '',
                    icon: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).error,
                      size: 30.0,
                    ),
                    options: FFButtonOptions(
                      width: 40.0,
                      height: 36.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x00312467),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
              Text(
                'Edit task priority',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              Divider(
                thickness: 1.0,
                indent: 20.0,
                endIndent: 20.0,
                color: FlutterFlowTheme.of(context).primary,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                1,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '1',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                2,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '2',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 20.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                3,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '3',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                4,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '4',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 18.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(38.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                5,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '5',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 20.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                6,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '6',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                7,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '7',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                8,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '8',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 20.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'CreateTask',
                            queryParameters: {
                              'chosenproject': serializeParam(
                                widget.chosenproject,
                                ParamType.DocumentReference,
                              ),
                              'priority': serializeParam(
                                9,
                                ParamType.int,
                              ),
                              'labelsdocpar': serializeParam(
                                widget.labeldocs,
                                ParamType.Document,
                              ),
                              'date': serializeParam(
                                widget.date,
                                ParamType.DateTime,
                              ),
                              'time': serializeParam(
                                widget.time,
                                ParamType.DateTime,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'labelsdocpar': widget.labeldocs,
                            },
                          );
                        },
                        text: '9',
                        icon: const Icon(
                          Icons.flag_outlined,
                          size: 25.0,
                        ),
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(110.0, 0.0, 20.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).error,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(45.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
