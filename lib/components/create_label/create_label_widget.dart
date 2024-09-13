import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'create_label_model.dart';
export 'create_label_model.dart';

class CreateLabelWidget extends StatefulWidget {
  const CreateLabelWidget({
    super.key,
    int? priority,
    this.chosenproject,
    required this.date,
    required this.time,
    required this.labeldocs,
  }) : priority = priority ?? 5;

  final int priority;
  final DocumentReference? chosenproject;
  final DateTime? date;
  final DateTime? time;
  final LabelsRecord? labeldocs;

  @override
  State<CreateLabelWidget> createState() => _CreateLabelWidgetState();
}

class _CreateLabelWidgetState extends State<CreateLabelWidget> {
  late CreateLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateLabelModel());

    _model.titleTextController ??= TextEditingController();
    _model.titleFocusNode ??= FocusNode();
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
        height: 370.0,
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
                'Label Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.titleTextController,
                  focusNode: _model.titleFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Label Title',
                    labelStyle:
                        FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 32.0, 20.0, 12.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  textAlign: TextAlign.start,
                  maxLines: null,
                  maxLength: 10,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  keyboardType: TextInputType.multiline,
                  validator:
                      _model.titleTextControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  'Label Color',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    final colorPickedColor = await showFFColorPicker(
                      context,
                      currentColor: _model.colorPicked ??= const Color(0xFF00B9FF),
                      showRecentColors: true,
                      allowOpacity: false,
                      textColor: FlutterFlowTheme.of(context).primaryText,
                      secondaryTextColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      primaryButtonBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      primaryButtonTextColor: Colors.white,
                      primaryButtonBorderColor: Colors.transparent,
                      displayAsBottomSheet: isMobileWidth(context),
                    );

                    if (colorPickedColor != null) {
                      safeSetState(() => _model.colorPicked =
                          colorPickedColor.withOpacity(1.0));
                    }

                    _model.colorpicked = _model.colorPicked;
                    safeSetState(() {});
                  },
                  child: Container(
                    width: 80.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: _model.colorpicked,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 44.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        var labelsRecordReference =
                            LabelsRecord.collection.doc();
                        await labelsRecordReference.set(createLabelsRecordData(
                          labelName: _model.titleTextController.text,
                          labelColor: _model.colorPicked,
                          uid: currentUserReference,
                        ));
                        _model.newlabel = LabelsRecord.getDocumentFromData(
                            createLabelsRecordData(
                              labelName: _model.titleTextController.text,
                              labelColor: _model.colorPicked,
                              uid: currentUserReference,
                            ),
                            labelsRecordReference);

                        context.pushNamed(
                          'CreateTask',
                          queryParameters: {
                            'chosenproject': serializeParam(
                              widget.chosenproject,
                              ParamType.DocumentReference,
                            ),
                            'priority': serializeParam(
                              widget.priority,
                              ParamType.int,
                            ),
                            'labelsdocpar': serializeParam(
                              _model.newlabel,
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
                            'labelsdocpar': _model.newlabel,
                          },
                        );

                        safeSetState(() {});
                      },
                      text: 'Create Label',
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
