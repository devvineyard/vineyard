import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'books_purchased_widget.dart' show BooksPurchasedWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BooksPurchasedModel extends FlutterFlowModel<BooksPurchasedWidget> {
  ///  Local state fields for this page.

  List<CartRecord> localCartList = [];
  void addToLocalCartList(CartRecord item) => localCartList.add(item);
  void removeFromLocalCartList(CartRecord item) => localCartList.remove(item);
  void removeAtIndexFromLocalCartList(int index) =>
      localCartList.removeAt(index);
  void insertAtIndexInLocalCartList(int index, CartRecord item) =>
      localCartList.insert(index, item);
  void updateLocalCartListAtIndex(int index, Function(CartRecord) updateFn) =>
      localCartList[index] = updateFn(localCartList[index]);

  List<CartRecord> deliveredCartList = [];
  void addToDeliveredCartList(CartRecord item) => deliveredCartList.add(item);
  void removeFromDeliveredCartList(CartRecord item) =>
      deliveredCartList.remove(item);
  void removeAtIndexFromDeliveredCartList(int index) =>
      deliveredCartList.removeAt(index);
  void insertAtIndexInDeliveredCartList(int index, CartRecord item) =>
      deliveredCartList.insert(index, item);
  void updateDeliveredCartListAtIndex(
          int index, Function(CartRecord) updateFn) =>
      deliveredCartList[index] = updateFn(deliveredCartList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in BooksPurchased widget.
  List<CartRecord>? oplCartList;
  // Stores action output result for [Firestore Query - Query a collection] action in BooksPurchased widget.
  List<CartRecord>? oplCartListDel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Tab widget.
  List<CartRecord>? onTapCartList;
  // Stores action output result for [Firestore Query - Query a collection] action in Tab widget.
  List<CartRecord>? onTapCartListDel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
