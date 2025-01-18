import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminaccountsRecord extends FirestoreRecord {
  AdminaccountsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _position = snapshotData['position'] as String?;
    _name = snapshotData['name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adminaccounts');

  static Stream<AdminaccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminaccountsRecord.fromSnapshot(s));

  static Future<AdminaccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminaccountsRecord.fromSnapshot(s));

  static AdminaccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminaccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminaccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminaccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminaccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminaccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminaccountsRecordData({
  String? position,
  String? name,
  String? photo,
  String? email,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? displayName,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'position': position,
      'name': name,
      'photo': photo,
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'display_name': displayName,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminaccountsRecordDocumentEquality
    implements Equality<AdminaccountsRecord> {
  const AdminaccountsRecordDocumentEquality();

  @override
  bool equals(AdminaccountsRecord? e1, AdminaccountsRecord? e2) {
    return e1?.position == e2?.position &&
        e1?.name == e2?.name &&
        e1?.photo == e2?.photo &&
        e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(AdminaccountsRecord? e) => const ListEquality().hash([
        e?.position,
        e?.name,
        e?.photo,
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.displayName,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminaccountsRecord;
}
