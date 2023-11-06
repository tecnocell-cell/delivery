import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lista_porcoes_model.dart';
export 'lista_porcoes_model.dart';

class ListaPorcoesWidget extends StatefulWidget {
  const ListaPorcoesWidget({Key? key}) : super(key: key);

  @override
  _ListaPorcoesWidgetState createState() => _ListaPorcoesWidgetState();
}

class _ListaPorcoesWidgetState extends State<ListaPorcoesWidget> {
  late ListaPorcoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaPorcoesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0x004B39EF),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 15.0,
                    borderWidth: 2.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 25.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                ),
                Text(
                  'Adicionais',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                      ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, -1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Text(
                      'LISTA DE ADICIONAIS',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                StreamBuilder<List<AdicionalRecord>>(
                  stream: queryAdicionalRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<AdicionalRecord> listViewAdicionalRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAdicionalRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewAdicionalRecord =
                            listViewAdicionalRecordList[listViewIndex];
                        return Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.compact,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                      child: CheckboxListTile(
                                        value: _model.checkboxListTileValueMap[
                                            listViewAdicionalRecord] ??= false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              _model.checkboxListTileValueMap[
                                                      listViewAdicionalRecord] =
                                                  newValue!);
                                        },
                                        title: Text(
                                          listViewAdicionalRecord.nome,
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                        subtitle: Text(
                                          formatNumber(
                                            listViewAdicionalRecord.preco,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                            currency: 'R\$ ',
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                        dense: true,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
