import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'get_quantidade_widget.dart' show GetQuantidadeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GetQuantidadeModel extends FlutterFlowModel<GetQuantidadeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldObs widget.
  FocusNode? textFieldObsFocusNode;
  TextEditingController? textFieldObsController;
  String? Function(BuildContext, String?)? textFieldObsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldObsFocusNode?.dispose();
    textFieldObsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
