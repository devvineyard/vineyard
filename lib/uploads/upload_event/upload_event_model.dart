import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'upload_event_widget.dart' show UploadEventWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadEventModel extends FlutterFlowModel<UploadEventWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataLlz = false;
  FFUploadedFile uploadedLocalFile_uploadDataLlz =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_uploadDataJvi = false;
  FFUploadedFile uploadedLocalFile_uploadDataJvi =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataJvi = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
