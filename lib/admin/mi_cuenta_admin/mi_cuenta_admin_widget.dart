import '/admin/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mi_cuenta_admin_model.dart';
export 'mi_cuenta_admin_model.dart';

class MiCuentaAdminWidget extends StatefulWidget {
  const MiCuentaAdminWidget({Key? key}) : super(key: key);

  @override
  _MiCuentaAdminWidgetState createState() => _MiCuentaAdminWidgetState();
}

class _MiCuentaAdminWidgetState extends State<MiCuentaAdminWidget> {
  late MiCuentaAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MiCuentaAdminModel());

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
                url: 'https://mi-iphone.com.ar/index.php/Sgtos/minhaConta',
                bypass: false,
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.9,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ),
            wrapWithModel(
              model: _model.navBarAdminModel,
              updateCallback: () => setState(() {}),
              child: NavBarAdminWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
