import '/admin/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dash_model.dart';
export 'dash_model.dart';

class DashWidget extends StatefulWidget {
  const DashWidget({Key? key}) : super(key: key);

  @override
  _DashWidgetState createState() => _DashWidgetState();
}

class _DashWidgetState extends State<DashWidget> {
  late DashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashModel());

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: FlutterFlowWebView(
                  url: 'https://mi-iphone.com.ar',
                  bypass: false,
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 1.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
            ),
            wrapWithModel(
              model: _model.navBarAdminModel,
              updateCallback: () => setState(() {}),
              updateOnChange: true,
              child: NavBarAdminWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
