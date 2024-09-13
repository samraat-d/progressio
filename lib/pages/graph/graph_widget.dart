import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/smallprojectcard/smallprojectcard_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'graph_model.dart';
export 'graph_model.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({super.key});

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget>
    with TickerProviderStateMixin {
  late GraphModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraphModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.project = await queryProjectsRecordOnce(
        queryBuilder: (projectsRecord) => projectsRecord.where(
          'uid',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.selectedproject = _model.project?.reference;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 30.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 138.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFE25DFF),
                    Color(0xFFD16BFF),
                    Color(0xFFFFC4F9)
                  ],
                  stops: [0.0, 0.0, 0.7],
                  begin: AlignmentDirectional(-1.0, -1.0),
                  end: AlignmentDirectional(1.0, 1.0),
                ),
              ),
              child: Container(
                width: 100.0,
                height: 16.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0x00FFFFFF),
                      FlutterFlowTheme.of(context).secondaryBackground
                    ],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(0.0, -1.0),
                    end: const AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.goNamed('FinalLogin');
                                },
                                text: 'Back',
                                icon: FaIcon(
                                  FontAwesomeIcons.arrowLeft,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 16.0,
                                ),
                                options: FFButtonOptions(
                                  width: 100.0,
                                  height: 42.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x00FFFFFF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 20.0, 5.0),
                            child: AuthUserStreamWidget(
                              builder: (context) =>
                                  StreamBuilder<List<AccountsRecord>>(
                                stream: queryAccountsRecord(
                                  queryBuilder: (accountsRecord) =>
                                      accountsRecord.where(
                                    'uid',
                                    isEqualTo: currentUserUid,
                                  ),
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<AccountsRecord>
                                      containerAccountsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final containerAccountsRecord =
                                      containerAccountsRecordList.isNotEmpty
                                          ? containerAccountsRecordList.first
                                          : null;

                                  return Container(
                                    width: 45.0,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        image: Image.network(
                                          currentUserPhoto,
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(45.0),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation']!);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Graph',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 26.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  height: 49.0,
                  decoration: const BoxDecoration(),
                  child: StreamBuilder<List<ProjectsRecord>>(
                    stream: queryProjectsRecord(
                      queryBuilder: (projectsRecord) => projectsRecord.where(
                        'uid',
                        isEqualTo: currentUserReference,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ProjectsRecord> listViewProjectsRecordList =
                          snapshot.data!;

                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: listViewProjectsRecordList.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 10.0),
                        itemBuilder: (context, listViewIndex) {
                          final listViewProjectsRecord =
                              listViewProjectsRecordList[listViewIndex];
                          return SmallprojectcardWidget(
                            key: Key(
                                'Keyu3i_${listViewIndex}_of_${listViewProjectsRecordList.length}'),
                            projectDetails: listViewProjectsRecord,
                            selected: () async {
                              _model.selectedproject =
                                  listViewProjectsRecord.reference;
                              safeSetState(() {});
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
              child: StreamBuilder<List<GraphRecord>>(
                stream: queryGraphRecord(
                  queryBuilder: (graphRecord) => graphRecord
                      .where(
                        'pid',
                        isEqualTo: _model.selectedproject,
                      )
                      .where(
                        'uid',
                        isEqualTo: currentUserReference,
                      )
                      .orderBy('timedate'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<GraphRecord> chartGraphRecordList = snapshot.data!;

                  return SizedBox(
                    width: 370.0,
                    height: 400.0,
                    child: FlutterFlowLineChart(
                      data: [
                        FFLineChartData(
                          xData: chartGraphRecordList
                              .map((d) => d.timedate)
                              .toList(),
                          yData: chartGraphRecordList
                              .map((d) => d.progress)
                              .toList(),
                          settings: LineChartBarData(
                            color: FlutterFlowTheme.of(context).primary,
                            barWidth: 2.0,
                            belowBarData: BarAreaData(
                              show: true,
                              color: FlutterFlowTheme.of(context).accent1,
                            ),
                          ),
                        )
                      ],
                      chartStylingInfo: ChartStylingInfo(
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        borderColor: FlutterFlowTheme.of(context).secondaryText,
                        borderWidth: 1.0,
                      ),
                      axisBounds: const AxisBounds(
                        minY: 0.0,
                        maxY: 100.0,
                      ),
                      xAxisLabelInfo: const AxisLabelInfo(
                        title: 'Time',
                        titleTextStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        showLabels: true,
                        labelInterval: 10.0,
                        reservedSize: 32.0,
                      ),
                      yAxisLabelInfo: const AxisLabelInfo(
                        title: 'Progress',
                        titleTextStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        showLabels: true,
                        labelInterval: 10.0,
                        reservedSize: 40.0,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
