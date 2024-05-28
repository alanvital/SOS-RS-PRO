import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_cidadao_widget.dart' show NovoCidadaoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NovoCidadaoModel extends FlutterFlowModel<NovoCidadaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TxtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for DropDownSexo widget.
  String? dropDownSexoValue;
  FormFieldController<String>? dropDownSexoValueController;
  // State field(s) for TxtNascimento widget.
  FocusNode? txtNascimentoFocusNode;
  TextEditingController? txtNascimentoTextController;
  final txtNascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtNascimentoTextControllerValidator;
  // State field(s) for TxtDescricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  // State field(s) for TxtTelefone widget.
  FocusNode? txtTelefoneFocusNode;
  TextEditingController? txtTelefoneTextController;
  final txtTelefoneMask = MaskTextInputFormatter(mask: '(##)#########');
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  // State field(s) for TxtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for ChoiceChipsEspecialidades widget.
  FormFieldController<List<String>>? choiceChipsEspecialidadesValueController;
  List<String>? get choiceChipsEspecialidadesValues =>
      choiceChipsEspecialidadesValueController?.value;
  set choiceChipsEspecialidadesValues(List<String>? val) =>
      choiceChipsEspecialidadesValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtNascimentoFocusNode?.dispose();
    txtNascimentoTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();
  }
}
