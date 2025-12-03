import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VersesRecord extends FirestoreRecord {
  VersesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "greeting" field.
  String? _greeting;
  String get greeting => _greeting ?? '';
  bool hasGreeting() => _greeting != null;

  // "bible_verse" field.
  String? _bibleVerse;
  String get bibleVerse => _bibleVerse ?? '';
  bool hasBibleVerse() => _bibleVerse != null;

  // "verse" field.
  String? _verse;
  String get verse => _verse ?? '';
  bool hasVerse() => _verse != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  // "whoo" field.
  String? _whoo;
  String get whoo => _whoo ?? '';
  bool hasWhoo() => _whoo != null;

  // "now" field.
  DateTime? _now;
  DateTime? get now => _now;
  bool hasNow() => _now != null;

  void _initializeFields() {
    _greeting = snapshotData['greeting'] as String?;
    _bibleVerse = snapshotData['bible_verse'] as String?;
    _verse = snapshotData['verse'] as String?;
    _number = castToType<int>(snapshotData['number']);
    _whoo = snapshotData['whoo'] as String?;
    _now = snapshotData['now'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('verses');

  static Stream<VersesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VersesRecord.fromSnapshot(s));

  static Future<VersesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VersesRecord.fromSnapshot(s));

  static VersesRecord fromSnapshot(DocumentSnapshot snapshot) => VersesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VersesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VersesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VersesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VersesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVersesRecordData({
  String? greeting,
  String? bibleVerse,
  String? verse,
  int? number,
  String? whoo,
  DateTime? now,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'greeting': greeting,
      'bible_verse': bibleVerse,
      'verse': verse,
      'number': number,
      'whoo': whoo,
      'now': now,
    }.withoutNulls,
  );

  return firestoreData;
}

class VersesRecordDocumentEquality implements Equality<VersesRecord> {
  const VersesRecordDocumentEquality();

  @override
  bool equals(VersesRecord? e1, VersesRecord? e2) {
    return e1?.greeting == e2?.greeting &&
        e1?.bibleVerse == e2?.bibleVerse &&
        e1?.verse == e2?.verse &&
        e1?.number == e2?.number &&
        e1?.whoo == e2?.whoo &&
        e1?.now == e2?.now;
  }

  @override
  int hash(VersesRecord? e) => const ListEquality()
      .hash([e?.greeting, e?.bibleVerse, e?.verse, e?.number, e?.whoo, e?.now]);

  @override
  bool isValidKey(Object? o) => o is VersesRecord;
}
