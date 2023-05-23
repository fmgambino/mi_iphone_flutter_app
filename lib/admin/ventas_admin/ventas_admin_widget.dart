import '/admin/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ventas_admin_model.dart';
export 'ventas_admin_model.dart';

class VentasAdminWidget extends StatefulWidget {
  const VentasAdminWidget({Key? key}) : super(key: key);

  @override
  _VentasAdminWidgetState createState() => _VentasAdminWidgetState();
}

class _VentasAdminWidgetState extends State<VentasAdminWidget> {
  late VentasAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VentasAdminModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FlutterFlowWebView(
                  url: 'https://mi-iphone.com.ar/index.php/vendas',
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
