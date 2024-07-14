import '/flutter_flow/flutter_flow_util.dart';
import 'pdf_viewer_widget.dart' show PdfViewerWidget;
import 'package:flutter/material.dart';

class PdfViewerModel extends FlutterFlowModel<PdfViewerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
