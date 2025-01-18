import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengesRecord extends FirestoreRecord {
  ChallengesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "challengeId" field.
  String? _challengeId;
  String get challengeId => _challengeId ?? '';
  bool hasChallengeId() => _challengeId != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "residents" field.
  List<DocumentReference>? _residents;
  List<DocumentReference> get residents => _residents ?? const [];
  bool hasResidents() => _residents != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "isComplete" field.
  bool? _isComplete;
  bool get isComplete => _isComplete ?? false;
  bool hasIsComplete() => _isComplete != null;

  void _initializeFields() {
    _challengeId = snapshotData['challengeId'] as String?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _residents = getDataList(snapshotData['residents']);
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
    _isComplete = snapshotData['isComplete'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenges');

  static Stream<ChallengesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengesRecord.fromSnapshot(s));

  static Future<ChallengesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChallengesRecord.fromSnapshot(s));

  static ChallengesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengesRecordData({
  String? challengeId,
  DocumentReference? creator,
  String? title,
  String? description,
  DateTime? dateCreated,
  DateTime? dueDate,
  bool? isComplete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'challengeId': challengeId,
      'creator': creator,
      'title': title,
      'description': description,
      'dateCreated': dateCreated,
      'dueDate': dueDate,
      'isComplete': isComplete,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengesRecordDocumentEquality implements Equality<ChallengesRecord> {
  const ChallengesRecordDocumentEquality();

  @override
  bool equals(ChallengesRecord? e1, ChallengesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.challengeId == e2?.challengeId &&
        e1?.creator == e2?.creator &&
        listEquality.equals(e1?.residents, e2?.residents) &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.dueDate == e2?.dueDate &&
        e1?.isComplete == e2?.isComplete;
  }

  @override
  int hash(ChallengesRecord? e) => const ListEquality().hash([
        e?.challengeId,
        e?.creator,
        e?.residents,
        e?.title,
        e?.description,
        e?.dateCreated,
        e?.dueDate,
        e?.isComplete
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengesRecord;
}
