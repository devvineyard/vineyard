import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'dart:ui';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'vims_widget.dart' show VimsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class VimsModel extends FlutterFlowModel<VimsWidget> {
  /// Query cache managers for this widget.

  final _vimsManager = StreamRequestManager<List<VimsRecord>>();
  Stream<List<VimsRecord>> vims({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<VimsRecord>> Function() requestFn,
  }) =>
      _vimsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearVimsCache() => _vimsManager.clear();
  void clearVimsCacheKey(String? uniqueKey) =>
      _vimsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearVimsCache();
  }
}
