import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/confirm_graph_add/confirm_graph_add_widget.dart';
import '/components/delete_task/delete_task_widget.dart';
import '/components/smallprojectcard/smallprojectcard_widget.dart';
import '/components/to_do_component/to_do_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'todolist_model.dart';
export 'todolist_model.dart';

class TodolistWidget extends StatefulWidget {
  const TodolistWidget({super.key});

  @override
  State<TodolistWidget> createState() => _TodolistWidgetState();
}

class _TodolistWidgetState extends State<TodolistWidget>
    with TickerProviderStateMixin {
  late TodolistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TodolistModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.initialproject = await queryProjectsRecordOnce(
        queryBuilder: (projectsRecord) => projectsRecord.where(
          'uid',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.initiallabel = await queryLabelsRecordOnce(
        queryBuilder: (labelsRecord) => labelsRecord.where(
          'uid',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.labelslist = await queryLabelsRecordOnce(
        queryBuilder: (labelsRecord) => labelsRecord.where(
          'uid',
          isEqualTo: currentUserReference,
        ),
      );
      if (_model.labelslist != null && (_model.labelslist)!.isNotEmpty) {
        _model.selectedProject = _model.initialproject?.reference;
        _model.lablesdoc = _model.initiallabel;
        _model.labellist = _model.labellist;
        safeSetState(() {});
      } else {
        var labelsRecordReference = LabelsRecord.collection.doc();
        await labelsRecordReference.set(createLabelsRecordData(
          labelName: 'Work',
          labelColor: const Color(0xFFFF0404),
          uid: currentUserReference,
        ));
        _model.startlabel = LabelsRecord.getDocumentFromData(
            createLabelsRecordData(
              labelName: 'Work',
              labelColor: const Color(0xFFFF0404),
              uid: currentUserReference,
            ),
            labelsRecordReference);
        _model.selectedProject = _model.initialproject?.reference;
        _model.lablesdoc = _model.startlabel;
        _model.labellist = _model.startlabel;
        safeSetState(() {});
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 212.0,
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
                              child: StreamBuilder<List<AccountsRecord>>(
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
                                        image: Image.network(
                                          containerAccountsRecord!.photoUrl,
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(45.0),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation']!);
                                },
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
                              'To-Do List',
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
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            height: 49.0,
                            decoration: const BoxDecoration(),
                            child: StreamBuilder<List<ProjectsRecord>>(
                              stream: queryProjectsRecord(
                                queryBuilder: (projectsRecord) =>
                                    projectsRecord.where(
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<ProjectsRecord>
                                    listViewProjectsRecordList = snapshot.data!;

                                return ListView.separated(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10.0),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listViewProjectsRecordList.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(width: 10.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewProjectsRecord =
                                        listViewProjectsRecordList[
                                            listViewIndex];
                                    return SmallprojectcardWidget(
                                      key: Key(
                                          'Keykxf_${listViewIndex}_of_${listViewProjectsRecordList.length}'),
                                      projectDetails: listViewProjectsRecord,
                                      selected: () async {
                                        _model.selectedProject =
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
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'CreateTask',
                      queryParameters: {
                        'chosenproject': serializeParam(
                          _model.selectedProject,
                          ParamType.DocumentReference,
                        ),
                        'priority': serializeParam(
                          5,
                          ParamType.int,
                        ),
                        'labelsdocpar': serializeParam(
                          _model.lablesdoc,
                          ParamType.Document,
                        ),
                        'date': serializeParam(
                          random_data.randomDate(),
                          ParamType.DateTime,
                        ),
                        'time': serializeParam(
                          getCurrentTimestamp,
                          ParamType.DateTime,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'labelsdocpar': _model.lablesdoc,
                      },
                    );
                  },
                  text: 'Create',
                  icon: Icon(
                    Icons.add_circle,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 25.0,
                  ),
                  options: FFButtonOptions(
                    width: 131.0,
                    height: 42.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.projref = await ProjectsRecord.getDocumentOnce(
                        _model.selectedProject!);
                    _model.graphlist = await queryGraphRecordOnce(
                      queryBuilder: (graphRecord) => graphRecord
                          .where(
                            'uid',
                            isEqualTo: currentUserReference,
                          )
                          .where(
                            'pid',
                            isEqualTo: _model.selectedProject,
                          ),
                    );

                    await GraphRecord.collection
                        .doc()
                        .set(createGraphRecordData(
                          uid: currentUserReference,
                          pid: _model.selectedProject,
                          progress: (_model.projref!.tasksCompleted /
                                  _model.projref!.numTasks) *
                              100,
                          timedate: valueOrDefault<int>(
                                _model.graphlist?.length,
                                0,
                              ) +
                              1,
                        ));
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => FocusScope.of(context).unfocus(),
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: const ConfirmGraphAddWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));

                    safeSetState(() {});
                  },
                  text: 'Add to Progress',
                  icon: Icon(
                    Icons.trending_up,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 25.0,
                  ),
                  options: FFButtonOptions(
                    width: 164.0,
                    height: 42.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF664AD2),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelPadding: const EdgeInsetsDirectional.fromSTEB(
                            32.0, 0.0, 32.0, 0.0),
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        tabs: const [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.rocket,
                                ),
                              ),
                              Tab(
                                text: 'In Process',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.check_circle,
                                ),
                              ),
                              Tab(
                                text: 'Completed',
                              ),
                            ],
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              decoration: const BoxDecoration(),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: StreamBuilder<List<TasksRecord>>(
                                  stream: queryTasksRecord(
                                    queryBuilder: (tasksRecord) => tasksRecord
                                        .where(
                                          'uid',
                                          isEqualTo: currentUserReference,
                                        )
                                        .where(
                                          'pid',
                                          isEqualTo: _model.selectedProject,
                                        )
                                        .where(
                                          'isCompleted',
                                          isEqualTo: false,
                                        )
                                        .orderBy('priority')
                                        .orderBy('deadline_date'),
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
                                    List<TasksRecord> listViewTasksRecordList =
                                        snapshot.data!;

                                    return ListView.separated(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 15.0),
                                      scrollDirection: Axis.vertical,
                                      itemCount: listViewTasksRecordList.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 15.0),
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewTasksRecord =
                                            listViewTasksRecordList[
                                                listViewIndex];
                                        return Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: ToDoComponentWidget(
                                            key: Key(
                                                'Keyctl_${listViewIndex}_of_${listViewTasksRecordList.length}'),
                                            tasksDoc: listViewTasksRecord,
                                            editTask: () async {},
                                            deleteTask: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: DeleteTaskWidget(
                                                        taskdoc:
                                                            listViewTasksRecord,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            iscomplete: () async {
                                              await listViewTasksRecord
                                                  .reference
                                                  .update(createTasksRecordData(
                                                isCompleted: true,
                                              ));

                                              await listViewTasksRecord.pid!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'tasks_completed':
                                                        FieldValue.increment(1),
                                                  },
                                                ),
                                              });
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          StreamBuilder<List<TasksRecord>>(
                            stream: queryTasksRecord(
                              queryBuilder: (tasksRecord) => tasksRecord
                                  .where(
                                    'uid',
                                    isEqualTo: currentUserReference,
                                  )
                                  .where(
                                    'pid',
                                    isEqualTo: _model.selectedProject,
                                  )
                                  .where(
                                    'isCompleted',
                                    isEqualTo: true,
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
                              List<TasksRecord> listViewTasksRecordList =
                                  snapshot.data!;

                              return ListView.separated(
                                padding: const EdgeInsets.symmetric(vertical: 15.0),
                                scrollDirection: Axis.vertical,
                                itemCount: listViewTasksRecordList.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 15.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewTasksRecord =
                                      listViewTasksRecordList[listViewIndex];
                                  return Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: ToDoComponentWidget(
                                      key: Key(
                                          'Keywpv_${listViewIndex}_of_${listViewTasksRecordList.length}'),
                                      tasksDoc: listViewTasksRecord,
                                      editTask: () async {},
                                      deleteTask: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: DeleteTaskWidget(
                                                  taskdoc: listViewTasksRecord,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      iscomplete: () async {
                                        await listViewTasksRecord.reference
                                            .update(createTasksRecordData(
                                          isCompleted: false,
                                        ));
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
