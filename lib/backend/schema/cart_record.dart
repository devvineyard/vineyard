import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "sent_to_Pep_date" field.
  DateTime? _sentToPepDate;
  DateTime? get sentToPepDate => _sentToPepDate;
  bool hasSentToPepDate() => _sentToPepDate != null;

  // "Pep_address" field.
  String? _pepAddress;
  String get pepAddress => _pepAddress ?? '';
  bool hasPepAddress() => _pepAddress != null;

  // "customer_address" field.
  String? _customerAddress;
  String get customerAddress => _customerAddress ?? '';
  bool hasCustomerAddress() => _customerAddress != null;

  // "acknowledged_acknowledgement" field.
  bool? _acknowledgedAcknowledgement;
  bool get acknowledgedAcknowledgement => _acknowledgedAcknowledgement ?? false;
  bool hasAcknowledgedAcknowledgement() => _acknowledgedAcknowledgement != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "customer_id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  bool hasCustomerId() => _customerId != null;

  // "batch_GUID" field.
  String? _batchGUID;
  String get batchGUID => _batchGUID ?? '';
  bool hasBatchGUID() => _batchGUID != null;

  // "total_quantity" field.
  int? _totalQuantity;
  int get totalQuantity => _totalQuantity ?? 0;
  bool hasTotalQuantity() => _totalQuantity != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _id = snapshotData['id'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _orderDate = snapshotData['order_date'] as DateTime?;
    _sentToPepDate = snapshotData['sent_to_Pep_date'] as DateTime?;
    _pepAddress = snapshotData['Pep_address'] as String?;
    _customerAddress = snapshotData['customer_address'] as String?;
    _acknowledgedAcknowledgement =
        snapshotData['acknowledged_acknowledgement'] as bool?;
    _fullName = snapshotData['full_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _customerId = snapshotData['customer_id'] as String?;
    _batchGUID = snapshotData['batch_GUID'] as String?;
    _totalQuantity = castToType<int>(snapshotData['total_quantity']);
    _totalPrice = castToType<double>(snapshotData['total_price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? name,
  double? price,
  DateTime? createdAt,
  int? quantity,
  String? id,
  DocumentReference? userRef,
  String? status,
  DateTime? orderDate,
  DateTime? sentToPepDate,
  String? pepAddress,
  String? customerAddress,
  bool? acknowledgedAcknowledgement,
  String? fullName,
  String? phoneNumber,
  String? customerId,
  String? batchGUID,
  int? totalQuantity,
  double? totalPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'created_at': createdAt,
      'quantity': quantity,
      'id': id,
      'userRef': userRef,
      'status': status,
      'order_date': orderDate,
      'sent_to_Pep_date': sentToPepDate,
      'Pep_address': pepAddress,
      'customer_address': customerAddress,
      'acknowledged_acknowledgement': acknowledgedAcknowledgement,
      'full_name': fullName,
      'phone_number': phoneNumber,
      'customer_id': customerId,
      'batch_GUID': batchGUID,
      'total_quantity': totalQuantity,
      'total_price': totalPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.quantity == e2?.quantity &&
        e1?.id == e2?.id &&
        e1?.userRef == e2?.userRef &&
        e1?.status == e2?.status &&
        e1?.orderDate == e2?.orderDate &&
        e1?.sentToPepDate == e2?.sentToPepDate &&
        e1?.pepAddress == e2?.pepAddress &&
        e1?.customerAddress == e2?.customerAddress &&
        e1?.acknowledgedAcknowledgement == e2?.acknowledgedAcknowledgement &&
        e1?.fullName == e2?.fullName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.customerId == e2?.customerId &&
        e1?.batchGUID == e2?.batchGUID &&
        e1?.totalQuantity == e2?.totalQuantity &&
        e1?.totalPrice == e2?.totalPrice;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.name,
        e?.price,
        e?.createdAt,
        e?.quantity,
        e?.id,
        e?.userRef,
        e?.status,
        e?.orderDate,
        e?.sentToPepDate,
        e?.pepAddress,
        e?.customerAddress,
        e?.acknowledgedAcknowledgement,
        e?.fullName,
        e?.phoneNumber,
        e?.customerId,
        e?.batchGUID,
        e?.totalQuantity,
        e?.totalPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
