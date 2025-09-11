import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VimsRecord extends FirestoreRecord {
  VimsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "youtube_path" field.
  String? _youtubePath;
  String get youtubePath => _youtubePath ?? '';
  bool hasYoutubePath() => _youtubePath != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _youtubePath = snapshotData['youtube_path'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vims');

  static Stream<VimsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VimsRecord.fromSnapshot(s));

  static Future<VimsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VimsRecord.fromSnapshot(s));

  static VimsRecord fromSnapshot(DocumentSnapshot snapshot) => VimsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VimsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VimsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VimsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VimsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVimsRecordData({
  String? title,
  String? youtubePath,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'youtube_path': youtubePath,
    }.withoutNulls,
  );

  return firestoreData;
}

class VimsRecordDocumentEquality implements Equality<VimsRecord> {
  const VimsRecordDocumentEquality();

  @override
  bool equals(VimsRecord? e1, VimsRecord? e2) {
    return e1?.title == e2?.title && e1?.youtubePath == e2?.youtubePath;
  }

  @override
  int hash(VimsRecord? e) =>
      const ListEquality().hash([e?.title, e?.youtubePath]);

  @override
  bool isValidKey(Object? o) => o is VimsRecord;
}
