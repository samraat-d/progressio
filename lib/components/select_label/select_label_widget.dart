import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/create_label/create_label_widget.dart';
import '/components/smalllabelcard/smalllabelcard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'select_label_model.dart';
export 'select_label_model.dart';

class SelectLabelWidget extends StatefulWidget {
  const SelectLabelWidget({
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
  State<SelectLabelWidget> createState() => _SelectLabelWidgetState();
}

class _SelectLabelWidgetState extends State<SelectLabelWidget> {
  late SelectLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectLabelModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await queryLabelsRecordOnce(
        queryBuilder: (labelsRecord) => labelsRecord.where(
          'uid',
          isEqualTo: currentUserReference,
        ),
      );
      _model.labellist = _model.labellist;
      safeSetState(() {});
    });
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
                'Choose Label',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: StreamBuilder<List<LabelsRecord>>(
                  stream: queryLabelsRecord(
                    queryBuilder: (labelsRecord) => labelsRecord.where(
                      'uid',
                      isEqualTo: currentUserReference,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<LabelsRecord> gridViewLabelsRecordList =
                        snapshot.data!;

                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 1.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: gridViewLabelsRecordList.length,
                      itemBuilder: (context, gridViewIndex) {
                        final gridViewLabelsRecord =
                            gridViewLabelsRecordList[gridViewIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 30.0, 5.0, 50.0),
                          child: wrapWithModel(
                            model: _model.smalllabelcardModels.getModel(
                              gridViewLabelsRecord.labelId,
                              gridViewIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: SmalllabelcardWidget(
                              key: Key(
                                'Keyjy2_${gridViewLabelsRecord.labelId}',
                              ),
                              labelDetails: gridViewLabelsRecord,
                              selected: () async {
                                _model.chosenlabel =
                                    await LabelsRecord.getDocumentOnce(
                                        gridViewLabelsRecord.reference);

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
                                      _model.chosenlabel,
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
                                    'labelsdocpar': _model.chosenlabel,
                                  },
                                );

                                safeSetState(() {});
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Divider(
                thickness: 1.0,
                indent: 20.0,
                endIndent: 20.0,
                color: FlutterFlowTheme.of(context).primary,
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: CreateLabelWidget(
                                    priority: widget.priority,
                                    chosenproject: widget.chosenproject,
                                    date: widget.date!,
                                    time: widget.time!,
                                    labeldocs: widget.labeldocs!,
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: '',
                          icon: const Icon(
                            Icons.add_circle,
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            width: 52.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
