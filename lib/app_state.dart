import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ChurchLocation =
          latLngFromString(prefs.getString('ff_ChurchLocation')) ??
              _ChurchLocation;
    });
    _safeInit(() {
      _ChurchLocations = prefs
              .getStringList('ff_ChurchLocations')
              ?.map(latLngFromString)
              .withoutNulls ??
          _ChurchLocations;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  LatLng? _ChurchLocation = LatLng(-26.102312, 27.775856);
  LatLng? get ChurchLocation => _ChurchLocation;
  set ChurchLocation(LatLng? value) {
    _ChurchLocation = value;
    value != null
        ? prefs.setString('ff_ChurchLocation', value.serialize())
        : prefs.remove('ff_ChurchLocation');
  }

  int _verseCount = 0;
  int get verseCount => _verseCount;
  set verseCount(int value) {
    _verseCount = value;
  }

  double _cartTotal = 100.0;
  double get cartTotal => _cartTotal;
  set cartTotal(double value) {
    _cartTotal = value;
  }

  List<DocumentReference> _pendingDeliveries = [];
  List<DocumentReference> get pendingDeliveries => _pendingDeliveries;
  set pendingDeliveries(List<DocumentReference> value) {
    _pendingDeliveries = value;
  }

  void addToPendingDeliveries(DocumentReference value) {
    pendingDeliveries.add(value);
  }

  void removeFromPendingDeliveries(DocumentReference value) {
    pendingDeliveries.remove(value);
  }

  void removeAtIndexFromPendingDeliveries(int index) {
    pendingDeliveries.removeAt(index);
  }

  void updatePendingDeliveriesAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    pendingDeliveries[index] = updateFn(_pendingDeliveries[index]);
  }

  void insertAtIndexInPendingDeliveries(int index, DocumentReference value) {
    pendingDeliveries.insert(index, value);
  }

  int _cartTotalQuantity = 0;
  int get cartTotalQuantity => _cartTotalQuantity;
  set cartTotalQuantity(int value) {
    _cartTotalQuantity = value;
  }

  List<LatLng> _ChurchLocations = [
    LatLng(-26.102312, 27.775856),
    LatLng(-28.521299, 28.825237),
    LatLng(-22.638427, 30.833539),
    LatLng(-28.272776, 29.12769),
    LatLng(-28.548501, 28.874581)
  ];
  List<LatLng> get ChurchLocations => _ChurchLocations;
  set ChurchLocations(List<LatLng> value) {
    _ChurchLocations = value;
    prefs.setStringList(
        'ff_ChurchLocations', value.map((x) => x.serialize()).toList());
  }

  void addToChurchLocations(LatLng value) {
    ChurchLocations.add(value);
    prefs.setStringList('ff_ChurchLocations',
        _ChurchLocations.map((x) => x.serialize()).toList());
  }

  void removeFromChurchLocations(LatLng value) {
    ChurchLocations.remove(value);
    prefs.setStringList('ff_ChurchLocations',
        _ChurchLocations.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromChurchLocations(int index) {
    ChurchLocations.removeAt(index);
    prefs.setStringList('ff_ChurchLocations',
        _ChurchLocations.map((x) => x.serialize()).toList());
  }

  void updateChurchLocationsAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    ChurchLocations[index] = updateFn(_ChurchLocations[index]);
    prefs.setStringList('ff_ChurchLocations',
        _ChurchLocations.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInChurchLocations(int index, LatLng value) {
    ChurchLocations.insert(index, value);
    prefs.setStringList('ff_ChurchLocations',
        _ChurchLocations.map((x) => x.serialize()).toList());
  }

  final _eventsManager = StreamRequestManager<List<EventsRecord>>();
  Stream<List<EventsRecord>> events({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<EventsRecord>> Function() requestFn,
  }) =>
      _eventsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearEventsCache() => _eventsManager.clear();
  void clearEventsCacheKey(String? uniqueKey) =>
      _eventsManager.clearRequest(uniqueKey);

  final _servicesManager = StreamRequestManager<List<ServicesRecord>>();
  Stream<List<ServicesRecord>> services({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ServicesRecord>> Function() requestFn,
  }) =>
      _servicesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearServicesCache() => _servicesManager.clear();
  void clearServicesCacheKey(String? uniqueKey) =>
      _servicesManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
