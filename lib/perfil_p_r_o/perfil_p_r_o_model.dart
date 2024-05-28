import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_p_r_o_widget.dart' show PerfilPROWidget;
import 'package:flutter/material.dart';

class PerfilPROModel extends FlutterFlowModel<PerfilPROWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
