import '/backend/backend.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaController;
  String? Function(BuildContext, String?)? pesquisaControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    pesquisaFocusNode?.dispose();
    pesquisaController?.dispose();

    tabBarController?.dispose();
    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
