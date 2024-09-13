import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'smalllabelcard_model.dart';
export 'smalllabelcard_model.dart';

class SmalllabelcardWidget extends StatefulWidget {
  const SmalllabelcardWidget({
    super.key,
    required this.labelDetails,
    this.selected,
  });

  final LabelsRecord? labelDetails;
  final Future Function()? selected;

  @override
  State<SmalllabelcardWidget> createState() => _SmalllabelcardWidgetState();
}

class _SmalllabelcardWidgetState extends State<SmalllabelcardWidget> {
  late SmalllabelcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmalllabelcardModel());
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
        widget.labelDetails?.labelName,
        'name',
      ),
      options: FFButtonOptions(
        height: 65.0,
        padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: valueOrDefault<Color>(
          widget.labelDetails?.labelColor,
          FlutterFlowTheme.of(context).primary,
        ),
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
