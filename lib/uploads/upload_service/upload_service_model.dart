import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'upload_service_widget.dart' show UploadServiceWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadServiceModel extends FlutterFlowModel<UploadServiceWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataLocal = false;
  FFUploadedFile uploadedLocalFile_uploadDataLocal =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataFirebase = false;
  FFUploadedFile uploadedLocalFile_uploadDataFirebase =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataFirebase = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
