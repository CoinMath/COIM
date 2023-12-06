import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
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

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "isGuest" field.
  bool? _isGuest;
  bool get isGuest => _isGuest ?? false;
  bool hasIsGuest() => _isGuest != null;

  // "UserMiningData" field.
  DateTime? _userMiningData;
  DateTime? get userMiningData => _userMiningData;
  bool hasUserMiningData() => _userMiningData != null;

  // "lastRewardTime" field.
  DateTime? _lastRewardTime;
  DateTime? get lastRewardTime => _lastRewardTime;
  bool hasLastRewardTime() => _lastRewardTime != null;

  // "tokensMined" field.
  int? _tokensMined;
  int get tokensMined => _tokensMined ?? 0;
  bool hasTokensMined() => _tokensMined != null;

  // "miningPower" field.
  int? _miningPower;
  int get miningPower => _miningPower ?? 0;
  bool hasMiningPower() => _miningPower != null;

  // "miningUpgrades" field.
  bool? _miningUpgrades;
  bool get miningUpgrades => _miningUpgrades ?? false;
  bool hasMiningUpgrades() => _miningUpgrades != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userRole = snapshotData['userRole'] as String?;
    _password = snapshotData['password'] as String?;
    _isGuest = snapshotData['isGuest'] as bool?;
    _userMiningData = snapshotData['UserMiningData'] as DateTime?;
    _lastRewardTime = snapshotData['lastRewardTime'] as DateTime?;
    _tokensMined = castToType<int>(snapshotData['tokensMined']);
    _miningPower = castToType<int>(snapshotData['miningPower']);
    _miningUpgrades = snapshotData['miningUpgrades'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userRole,
  String? password,
  bool? isGuest,
  DateTime? userMiningData,
  DateTime? lastRewardTime,
  int? tokensMined,
  int? miningPower,
  bool? miningUpgrades,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'userRole': userRole,
      'password': password,
      'isGuest': isGuest,
      'UserMiningData': userMiningData,
      'lastRewardTime': lastRewardTime,
      'tokensMined': tokensMined,
      'miningPower': miningPower,
      'miningUpgrades': miningUpgrades,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userRole == e2?.userRole &&
        e1?.password == e2?.password &&
        e1?.isGuest == e2?.isGuest &&
        e1?.userMiningData == e2?.userMiningData &&
        e1?.lastRewardTime == e2?.lastRewardTime &&
        e1?.tokensMined == e2?.tokensMined &&
        e1?.miningPower == e2?.miningPower &&
        e1?.miningUpgrades == e2?.miningUpgrades;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userRole,
        e?.password,
        e?.isGuest,
        e?.userMiningData,
        e?.lastRewardTime,
        e?.tokensMined,
        e?.miningPower,
        e?.miningUpgrades
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
