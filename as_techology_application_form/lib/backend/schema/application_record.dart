import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicationRecord extends FirestoreRecord {
  ApplicationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "alternatePhone" field.
  String? _alternatePhone;
  String get alternatePhone => _alternatePhone ?? '';
  bool hasAlternatePhone() => _alternatePhone != null;

  // "campus" field.
  String? _campus;
  String get campus => _campus ?? '';
  bool hasCampus() => _campus != null;

  // "courseChoice" field.
  String? _courseChoice;
  String get courseChoice => _courseChoice ?? '';
  bool hasCourseChoice() => _courseChoice != null;

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  bool hasIdNumber() => _idNumber != null;

  // "race" field.
  String? _race;
  String get race => _race ?? '';
  bool hasRace() => _race != null;

  // "idFileUrl" field.
  String? _idFileUrl;
  String get idFileUrl => _idFileUrl ?? '';
  bool hasIdFileUrl() => _idFileUrl != null;

  // "highestCertUrl" field.
  String? _highestCertUrl;
  String get highestCertUrl => _highestCertUrl ?? '';
  bool hasHighestCertUrl() => _highestCertUrl != null;

  // "homeAddress" field.
  String? _homeAddress;
  String get homeAddress => _homeAddress ?? '';
  bool hasHomeAddress() => _homeAddress != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "read" field.
  bool? _read;
  bool get read => _read ?? false;
  bool hasRead() => _read != null;

  // "studentNo" field.
  String? _studentNo;
  String get studentNo => _studentNo ?? '';
  bool hasStudentNo() => _studentNo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _alternatePhone = snapshotData['alternatePhone'] as String?;
    _campus = snapshotData['campus'] as String?;
    _courseChoice = snapshotData['courseChoice'] as String?;
    _idNumber = snapshotData['idNumber'] as String?;
    _race = snapshotData['race'] as String?;
    _idFileUrl = snapshotData['idFileUrl'] as String?;
    _highestCertUrl = snapshotData['highestCertUrl'] as String?;
    _homeAddress = snapshotData['homeAddress'] as String?;
    _fullName = snapshotData['fullName'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _read = snapshotData['read'] as bool?;
    _studentNo = snapshotData['studentNo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('application');

  static Stream<ApplicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicationRecord.fromSnapshot(s));

  static Future<ApplicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicationRecord.fromSnapshot(s));

  static ApplicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicationRecordData({
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? alternatePhone,
  String? campus,
  String? courseChoice,
  String? idNumber,
  String? race,
  String? idFileUrl,
  String? highestCertUrl,
  String? homeAddress,
  String? fullName,
  DocumentReference? uid,
  bool? read,
  String? studentNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'alternatePhone': alternatePhone,
      'campus': campus,
      'courseChoice': courseChoice,
      'idNumber': idNumber,
      'race': race,
      'idFileUrl': idFileUrl,
      'highestCertUrl': highestCertUrl,
      'homeAddress': homeAddress,
      'fullName': fullName,
      'uid': uid,
      'read': read,
      'studentNo': studentNo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicationRecordDocumentEquality implements Equality<ApplicationRecord> {
  const ApplicationRecordDocumentEquality();

  @override
  bool equals(ApplicationRecord? e1, ApplicationRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.alternatePhone == e2?.alternatePhone &&
        e1?.campus == e2?.campus &&
        e1?.courseChoice == e2?.courseChoice &&
        e1?.idNumber == e2?.idNumber &&
        e1?.race == e2?.race &&
        e1?.idFileUrl == e2?.idFileUrl &&
        e1?.highestCertUrl == e2?.highestCertUrl &&
        e1?.homeAddress == e2?.homeAddress &&
        e1?.fullName == e2?.fullName &&
        e1?.uid == e2?.uid &&
        e1?.read == e2?.read &&
        e1?.studentNo == e2?.studentNo;
  }

  @override
  int hash(ApplicationRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.alternatePhone,
        e?.campus,
        e?.courseChoice,
        e?.idNumber,
        e?.race,
        e?.idFileUrl,
        e?.highestCertUrl,
        e?.homeAddress,
        e?.fullName,
        e?.uid,
        e?.read,
        e?.studentNo
      ]);

  @override
  bool isValidKey(Object? o) => o is ApplicationRecord;
}
