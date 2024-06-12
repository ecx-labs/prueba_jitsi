import '/flutter_flow/flutter_flow_util.dart';
import 'call_page_widget.dart' show CallPageWidget;
import 'package:flutter/material.dart';

class CallPageModel extends FlutterFlowModel<CallPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
