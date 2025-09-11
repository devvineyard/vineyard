import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'view_purchase_widget.dart' show ViewPurchaseWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ViewPurchaseModel extends FlutterFlowModel<ViewPurchaseWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode1;
  TextEditingController? addressTextController1;
  String? Function(BuildContext, String?)? addressTextController1Validator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode2;
  TextEditingController? addressTextController2;
  String? Function(BuildContext, String?)? addressTextController2Validator;
  String? _addressTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the Destination Pep store address.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    addressTextController2Validator = _addressTextController2Validator;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    addressFocusNode1?.dispose();
    addressTextController1?.dispose();

    addressFocusNode2?.dispose();
    addressTextController2?.dispose();
  }
}
