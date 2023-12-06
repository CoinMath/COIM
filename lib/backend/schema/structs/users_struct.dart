// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends FFFirebaseStruct {
  UsersStruct({
    String? miningActivity,
    String? email,
    String? name,
    int? referralBoost,
    int? referralCode,
    String? referredBy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _miningActivity = miningActivity,
        _email = email,
        _name = name,
        _referralBoost = referralBoost,
        _referralCode = referralCode,
        _referredBy = referredBy,
        super(firestoreUtilData);

  // "mining_activity" field.
  String? _miningActivity;
  String get miningActivity => _miningActivity ?? '';
  set miningActivity(String? val) => _miningActivity = val;
  bool hasMiningActivity() => _miningActivity != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "referral_boost" field.
  int? _referralBoost;
  int get referralBoost => _referralBoost ?? 0;
  set referralBoost(int? val) => _referralBoost = val;
  void incrementReferralBoost(int amount) =>
      _referralBoost = referralBoost + amount;
  bool hasReferralBoost() => _referralBoost != null;

  // "referral_code" field.
  int? _referralCode;
  int get referralCode => _referralCode ?? 0;
  set referralCode(int? val) => _referralCode = val;
  void incrementReferralCode(int amount) =>
      _referralCode = referralCode + amount;
  bool hasReferralCode() => _referralCode != null;

  // "referred_by" field.
  String? _referredBy;
  String get referredBy => _referredBy ?? '';
  set referredBy(String? val) => _referredBy = val;
  bool hasReferredBy() => _referredBy != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        miningActivity: data['mining_activity'] as String?,
        email: data['email'] as String?,
        name: data['name'] as String?,
        referralBoost: castToType<int>(data['referral_boost']),
        referralCode: castToType<int>(data['referral_code']),
        referredBy: data['referred_by'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsersStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'mining_activity': _miningActivity,
        'email': _email,
        'name': _name,
        'referral_boost': _referralBoost,
        'referral_code': _referralCode,
        'referred_by': _referredBy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mining_activity': serializeParam(
          _miningActivity,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'referral_boost': serializeParam(
          _referralBoost,
          ParamType.int,
        ),
        'referral_code': serializeParam(
          _referralCode,
          ParamType.int,
        ),
        'referred_by': serializeParam(
          _referredBy,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        miningActivity: deserializeParam(
          data['mining_activity'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        referralBoost: deserializeParam(
          data['referral_boost'],
          ParamType.int,
          false,
        ),
        referralCode: deserializeParam(
          data['referral_code'],
          ParamType.int,
          false,
        ),
        referredBy: deserializeParam(
          data['referred_by'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        miningActivity == other.miningActivity &&
        email == other.email &&
        name == other.name &&
        referralBoost == other.referralBoost &&
        referralCode == other.referralCode &&
        referredBy == other.referredBy;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [miningActivity, email, name, referralBoost, referralCode, referredBy]);
}

UsersStruct createUsersStruct({
  String? miningActivity,
  String? email,
  String? name,
  int? referralBoost,
  int? referralCode,
  String? referredBy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsersStruct(
      miningActivity: miningActivity,
      email: email,
      name: name,
      referralBoost: referralBoost,
      referralCode: referralCode,
      referredBy: referredBy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsersStruct? updateUsersStruct(
  UsersStruct? users, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    users
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsersStructData(
  Map<String, dynamic> firestoreData,
  UsersStruct? users,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (users == null) {
    return;
  }
  if (users.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && users.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usersData = getUsersFirestoreData(users, forFieldValue);
  final nestedData = usersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = users.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsersFirestoreData(
  UsersStruct? users, [
  bool forFieldValue = false,
]) {
  if (users == null) {
    return {};
  }
  final firestoreData = mapToFirestore(users.toMap());

  // Add any Firestore field values
  users.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsersListFirestoreData(
  List<UsersStruct>? userss,
) =>
    userss?.map((e) => getUsersFirestoreData(e, true)).toList() ?? [];
