import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhotosRecord extends FirestoreRecord {
  PhotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "imageId" field.
  String? _imageId;
  String get imageId => _imageId ?? '';
  bool hasImageId() => _imageId != null;

  // "imageStatus" field.
  String? _imageStatus;
  String get imageStatus => _imageStatus ?? '';
  bool hasImageStatus() => _imageStatus != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "cameraId" field.
  String? _cameraId;
  String get cameraId => _cameraId ?? '';
  bool hasCameraId() => _cameraId != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _imageId = snapshotData['imageId'] as String?;
    _imageStatus = snapshotData['imageStatus'] as String?;
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
    _cameraId = snapshotData['cameraId'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('photos');

  static Stream<PhotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhotosRecord.fromSnapshot(s));

  static Future<PhotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PhotosRecord.fromSnapshot(s));

  static PhotosRecord fromSnapshot(DocumentSnapshot snapshot) => PhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhotosRecordData({
  String? image,
  String? imageId,
  String? imageStatus,
  DateTime? dateCreated,
  String? cameraId,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'imageId': imageId,
      'imageStatus': imageStatus,
      'dateCreated': dateCreated,
      'cameraId': cameraId,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhotosRecordDocumentEquality implements Equality<PhotosRecord> {
  const PhotosRecordDocumentEquality();

  @override
  bool equals(PhotosRecord? e1, PhotosRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.imageId == e2?.imageId &&
        e1?.imageStatus == e2?.imageStatus &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.cameraId == e2?.cameraId &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(PhotosRecord? e) => const ListEquality().hash([
        e?.image,
        e?.imageId,
        e?.imageStatus,
        e?.dateCreated,
        e?.cameraId,
        e?.owner
      ]);

  @override
  bool isValidKey(Object? o) => o is PhotosRecord;
}
