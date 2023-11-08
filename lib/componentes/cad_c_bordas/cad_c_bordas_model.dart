import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cad_c_bordas_widget.dart' show CadCBordasWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadCBordasModel extends FlutterFlowModel<CadCBordasWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for imputmesa widget.
  FocusNode? imputmesaFocusNode;
  TextEditingController? imputmesaController;
  String? Function(BuildContext, String?)? imputmesaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    imputmesaFocusNode?.dispose();
    imputmesaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
