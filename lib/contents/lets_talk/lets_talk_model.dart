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
import 'lets_talk_widget.dart' show LetsTalkWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class LetsTalkModel extends FlutterFlowModel<LetsTalkWidget> {
  /// Query cache managers for this widget.

  final _talksManager = StreamRequestManager<List<LetsTalkRecord>>();
  Stream<List<LetsTalkRecord>> talks({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<LetsTalkRecord>> Function() requestFn,
  }) =>
      _talksManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTalksCache() => _talksManager.clear();
  void clearTalksCacheKey(String? uniqueKey) =>
      _talksManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearTalksCache();
  }
}
