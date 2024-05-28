import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_profissional_widget.dart' show EditarProfissionalWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarProfissionalModel
    extends FlutterFlowModel<EditarProfissionalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TxtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for TxtEscClini widget.
  FocusNode? txtEscCliniFocusNode;
  TextEditingController? txtEscCliniTextController;
  String? Function(BuildContext, String?)? txtEscCliniTextControllerValidator;
  // State field(s) for DropProfissao widget.
  String? dropProfissaoValue;
  FormFieldController<String>? dropProfissaoValueController;
  // State field(s) for TxtRegisProf widget.
  FocusNode? txtRegisProfFocusNode;
  TextEditingController? txtRegisProfTextController;
  String? Function(BuildContext, String?)? txtRegisProfTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
  final txtTelefoneMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? txtTelefoneTextControllerValidator;
  // State field(s) for TxtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for TxtAgenda widget.
  FocusNode? txtAgendaFocusNode;
  TextEditingController? txtAgendaTextController;
  String? Function(BuildContext, String?)? txtAgendaTextControllerValidator;
  // State field(s) for TxtEspecialidades widget.
  FocusNode? txtEspecialidadesFocusNode;
  TextEditingController? txtEspecialidadesTextController;
  String? Function(BuildContext, String?)?
      txtEspecialidadesTextControllerValidator;
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

    txtEscCliniFocusNode?.dispose();
    txtEscCliniTextController?.dispose();

    txtRegisProfFocusNode?.dispose();
    txtRegisProfTextController?.dispose();

    txtNascimentoFocusNode?.dispose();
    txtNascimentoTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();

    txtTelefoneFocusNode?.dispose();
    txtTelefoneTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtAgendaFocusNode?.dispose();
    txtAgendaTextController?.dispose();

    txtEspecialidadesFocusNode?.dispose();
    txtEspecialidadesTextController?.dispose();
  }
}
