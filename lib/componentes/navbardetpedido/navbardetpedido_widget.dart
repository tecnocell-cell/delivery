import '/componentes/cadastrar/cadastrar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navbardetpedido_model.dart';
export 'navbardetpedido_model.dart';

class NavbardetpedidoWidget extends StatefulWidget {
  const NavbardetpedidoWidget({Key? key}) : super(key: key);

  @override
  _NavbardetpedidoWidgetState createState() => _NavbardetpedidoWidgetState();
}

class _NavbardetpedidoWidgetState extends State<NavbardetpedidoWidget> {
  late NavbardetpedidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbardetpedidoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.00, 1.00),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    Icons.home_outlined,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    FFIcons.kchat4,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 4.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        icon: Icon(
                          Icons.monetization_on_sharp,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.5,
                                  child: CadastrarWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                      ),
                    ),
                  ],
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    FFIcons.kshare3,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    Icons.print_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
