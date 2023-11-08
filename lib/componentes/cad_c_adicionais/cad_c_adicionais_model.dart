import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cad_c_adicionais_widget.dart' show CadCAdicionaisWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadCAdicionaisModel extends FlutterFlowModel<CadCAdicionaisWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for imputAdicional widget.
  FocusNode? imputAdicionalFocusNode;
  TextEditingController? imputAdicionalController;
  String? Function(BuildContext, String?)? imputAdicionalControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    imputAdicionalFocusNode?.dispose();
    imputAdicionalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
