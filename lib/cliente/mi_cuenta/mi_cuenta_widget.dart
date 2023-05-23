import '/cliente/nav_bar1_cliente/nav_bar1_cliente_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mi_cuenta_model.dart';
export 'mi_cuenta_model.dart';

class MiCuentaWidget extends StatefulWidget {
  const MiCuentaWidget({Key? key}) : super(key: key);

  @override
  _MiCuentaWidgetState createState() => _MiCuentaWidgetState();
}

class _MiCuentaWidgetState extends State<MiCuentaWidget> {
  late MiCuentaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MiCuentaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: FlutterFlowWebView(
                url: 'https://mi-iphone.com.ar/index.php/mine/conta',
                bypass: false,
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.9,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ),
            wrapWithModel(
              model: _model.navBar1ClienteModel,
              updateCallback: () => setState(() {}),
              child: NavBar1ClienteWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
