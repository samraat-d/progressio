import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'smallprojectcard_model.dart';
export 'smallprojectcard_model.dart';

class SmallprojectcardWidget extends StatefulWidget {
  const SmallprojectcardWidget({
    super.key,
    required this.projectDetails,
    this.selected,
  });

  final ProjectsRecord? projectDetails;
  final Future Function()? selected;

  @override
  State<SmallprojectcardWidget> createState() => _SmallprojectcardWidgetState();
}

class _SmallprojectcardWidgetState extends State<SmallprojectcardWidget> {
  late SmallprojectcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmallprojectcardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.selected?.call();
      },
      text: valueOrDefault<String>(
        widget.projectDetails?.projectName,
        'Title',
      ),
      options: FFButtonOptions(
        height: 65.0,
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).secondaryBackground,
              letterSpacing: 0.0,
            ),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
