import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/residents/resident_recent/resident_recent_widget.dart';
import 'dart:ui';
import 'rewards_page_widget.dart' show RewardsPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RewardsPageModel extends FlutterFlowModel<RewardsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for residentRecent component.
  late ResidentRecentModel residentRecentModel;

  @override
  void initState(BuildContext context) {
    residentRecentModel = createModel(context, () => ResidentRecentModel());
  }

  @override
  void dispose() {
    residentRecentModel.dispose();
  }
}
