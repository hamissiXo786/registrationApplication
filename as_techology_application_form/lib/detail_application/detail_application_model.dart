import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_application_widget.dart' show DetailApplicationWidget;
import 'package:flutter/material.dart';

class DetailApplicationModel extends FlutterFlowModel<DetailApplicationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (sendStatusUpdate)] action in Button widget.
  ApiCallResponse? apiSendStatus;
  // Stores action output result for [Backend Call - API (sendAcceptance)] action in Button widget.
  ApiCallResponse? apiResulthu9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
