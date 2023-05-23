import '/admin/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarAdmin component.
  late NavBarAdminModel navBarAdminModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarAdminModel = createModel(context, () => NavBarAdminModel());
  }

  void dispose() {
    navBarAdminModel.dispose();
  }

  /// Additional helper methods are added here.

}
