import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LetsTalkRecord extends FirestoreRecord {
  LetsTalkRecord._(
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
      FirebaseFirestore.instance.collection('letsTalk');

  static Stream<LetsTalkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LetsTalkRecord.fromSnapshot(s));

  static Future<LetsTalkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LetsTalkRecord.fromSnapshot(s));

  static LetsTalkRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LetsTalkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LetsTalkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LetsTalkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LetsTalkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LetsTalkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLetsTalkRecordData({
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

class LetsTalkRecordDocumentEquality implements Equality<LetsTalkRecord> {
  const LetsTalkRecordDocumentEquality();

  @override
  bool equals(LetsTalkRecord? e1, LetsTalkRecord? e2) {
    return e1?.title == e2?.title && e1?.youtubePath == e2?.youtubePath;
  }

  @override
  int hash(LetsTalkRecord? e) =>
      const ListEquality().hash([e?.title, e?.youtubePath]);

  @override
  bool isValidKey(Object? o) => o is LetsTalkRecord;
}
