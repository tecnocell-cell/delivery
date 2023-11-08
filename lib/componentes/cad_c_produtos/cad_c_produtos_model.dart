import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cad_c_produtos_widget.dart' show CadCProdutosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadCProdutosModel extends FlutterFlowModel<CadCProdutosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode;
  TextEditingController? nomeProdutoController;
  String? Function(BuildContext, String?)? nomeProdutoControllerValidator;
  // State field(s) for valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorController;
  String? Function(BuildContext, String?)? valorControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeProdutoFocusNode?.dispose();
    nomeProdutoController?.dispose();

    valorFocusNode?.dispose();
    valorController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
