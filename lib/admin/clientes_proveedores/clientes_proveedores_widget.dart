import '/admin/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'clientes_proveedores_model.dart';
export 'clientes_proveedores_model.dart';

class ClientesProveedoresWidget extends StatefulWidget {
  const ClientesProveedoresWidget({Key? key}) : super(key: key);

  @override
  _ClientesProveedoresWidgetState createState() =>
      _ClientesProveedoresWidgetState();
}

class _ClientesProveedoresWidgetState extends State<ClientesProveedoresWidget> {
  late ClientesProveedoresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientesProveedoresModel());

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
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FlutterFlowWebView(
                  url: 'https://mi-iphone.com.ar/index.php/clientes',
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
      ),
    );
  }
}
