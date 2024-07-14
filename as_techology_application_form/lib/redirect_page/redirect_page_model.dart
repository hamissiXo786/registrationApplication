import '/flutter_flow/flutter_flow_util.dart';
import 'redirect_page_widget.dart' show RedirectPageWidget;
import 'package:flutter/material.dart';

class RedirectPageModel extends FlutterFlowModel<RedirectPageWidget> {
  ///  Local state fields for this page.

  String role = '-';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
