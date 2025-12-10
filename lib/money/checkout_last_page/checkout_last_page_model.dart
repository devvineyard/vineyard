import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'checkout_last_page_widget.dart' show CheckoutLastPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutLastPageModel extends FlutterFlowModel<CheckoutLastPageWidget> {
  ///  Local state fields for this page.

  DateTime? currentDate;

  String? guid = '';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your full name.';
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your phone number.';
    }

    if (!RegExp('^(?:\\+27|0)[6-8][0-9]{8}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter  your email address.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  String? _idTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your ID.';
    }

    if (!RegExp(
            '^(?:\\d{2})(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\\d|3[01])\\d{4}[01]\\d{2}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  String? _addressTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your address.';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validationResult;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    idTextControllerValidator = _idTextControllerValidator;
    addressTextControllerValidator = _addressTextControllerValidator;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();
  }
}
