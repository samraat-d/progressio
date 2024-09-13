import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsRecord extends FirestoreRecord {
  AccountsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

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

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "links" field.
  String? _links;
  String get links => _links ?? '';
  bool hasLinks() => _links != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _username = snapshotData['username'] as String?;
    _links = snapshotData['links'] as String?;
    _profession = snapshotData['profession'] as String?;
    _location = snapshotData['location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accounts');

  static Stream<AccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountsRecord.fromSnapshot(s));

  static Future<AccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountsRecord.fromSnapshot(s));

  static AccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? username,
  String? links,
  String? profession,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'username': username,
      'links': links,
      'profession': profession,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountsRecordDocumentEquality implements Equality<AccountsRecord> {
  const AccountsRecordDocumentEquality();

  @override
  bool equals(AccountsRecord? e1, AccountsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.username == e2?.username &&
        e1?.links == e2?.links &&
        e1?.profession == e2?.profession &&
        e1?.location == e2?.location;
  }

  @override
  int hash(AccountsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.username,
        e?.links,
        e?.profession,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is AccountsRecord;
}
