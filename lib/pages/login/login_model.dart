import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for SenhaLogin widget.
  FocusNode? senhaLoginFocusNode;
  TextEditingController? senhaLoginController;
  late bool senhaLoginVisibility;
  String? Function(BuildContext, String?)? senhaLoginControllerValidator;
  // State field(s) for emailAddressCadastro widget.
  FocusNode? emailAddressCadastroFocusNode;
  TextEditingController? emailAddressCadastroController;
  String? Function(BuildContext, String?)?
      emailAddressCadastroControllerValidator;
  // State field(s) for SenhaCadastro widget.
  FocusNode? senhaCadastroFocusNode;
  TextEditingController? senhaCadastroController;
  late bool senhaCadastroVisibility;
  String? Function(BuildContext, String?)? senhaCadastroControllerValidator;
  // State field(s) for RSenhaCadastro widget.
  FocusNode? rSenhaCadastroFocusNode;
  TextEditingController? rSenhaCadastroController;
  late bool rSenhaCadastroVisibility;
  String? Function(BuildContext, String?)? rSenhaCadastroControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaLoginVisibility = false;
    senhaCadastroVisibility = false;
    rSenhaCadastroVisibility = false;
  }

  void dispose() {
    tabBarController?.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();

    senhaLoginFocusNode?.dispose();
    senhaLoginController?.dispose();

    emailAddressCadastroFocusNode?.dispose();
    emailAddressCadastroController?.dispose();

    senhaCadastroFocusNode?.dispose();
    senhaCadastroController?.dispose();

    rSenhaCadastroFocusNode?.dispose();
    rSenhaCadastroController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
