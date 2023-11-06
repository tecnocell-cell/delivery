import '/componentes/navbardetpedido/navbardetpedido_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'det_pedido_widget.dart' show DetPedidoWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetPedidoModel extends FlutterFlowModel<DetPedidoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbardetpedido component.
  late NavbardetpedidoModel navbardetpedidoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbardetpedidoModel = createModel(context, () => NavbardetpedidoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navbardetpedidoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
