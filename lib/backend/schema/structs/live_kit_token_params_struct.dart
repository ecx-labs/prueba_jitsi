// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LiveKitTokenParamsStruct extends FFFirebaseStruct {
  LiveKitTokenParamsStruct({
    String? identity,
    String? roomName,
    int? duration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _identity = identity,
        _roomName = roomName,
        _duration = duration,
        super(firestoreUtilData);

  // "identity" field.
  String? _identity;
  String get identity => _identity ?? '';
  set identity(String? val) => _identity = val;

  bool hasIdentity() => _identity != null;

  // "roomName" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  set roomName(String? val) => _roomName = val;

  bool hasRoomName() => _roomName != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  static LiveKitTokenParamsStruct fromMap(Map<String, dynamic> data) =>
      LiveKitTokenParamsStruct(
        identity: data['identity'] as String?,
        roomName: data['roomName'] as String?,
        duration: castToType<int>(data['duration']),
      );

  static LiveKitTokenParamsStruct? maybeFromMap(dynamic data) => data is Map
      ? LiveKitTokenParamsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'identity': _identity,
        'roomName': _roomName,
        'duration': _duration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'identity': serializeParam(
          _identity,
          ParamType.String,
        ),
        'roomName': serializeParam(
          _roomName,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
      }.withoutNulls;

  static LiveKitTokenParamsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LiveKitTokenParamsStruct(
        identity: deserializeParam(
          data['identity'],
          ParamType.String,
          false,
        ),
        roomName: deserializeParam(
          data['roomName'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LiveKitTokenParamsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LiveKitTokenParamsStruct &&
        identity == other.identity &&
        roomName == other.roomName &&
        duration == other.duration;
  }

  @override
  int get hashCode => const ListEquality().hash([identity, roomName, duration]);
}

LiveKitTokenParamsStruct createLiveKitTokenParamsStruct({
  String? identity,
  String? roomName,
  int? duration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LiveKitTokenParamsStruct(
      identity: identity,
      roomName: roomName,
      duration: duration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LiveKitTokenParamsStruct? updateLiveKitTokenParamsStruct(
  LiveKitTokenParamsStruct? liveKitTokenParams, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    liveKitTokenParams
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLiveKitTokenParamsStructData(
  Map<String, dynamic> firestoreData,
  LiveKitTokenParamsStruct? liveKitTokenParams,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (liveKitTokenParams == null) {
    return;
  }
  if (liveKitTokenParams.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && liveKitTokenParams.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final liveKitTokenParamsData =
      getLiveKitTokenParamsFirestoreData(liveKitTokenParams, forFieldValue);
  final nestedData =
      liveKitTokenParamsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      liveKitTokenParams.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLiveKitTokenParamsFirestoreData(
  LiveKitTokenParamsStruct? liveKitTokenParams, [
  bool forFieldValue = false,
]) {
  if (liveKitTokenParams == null) {
    return {};
  }
  final firestoreData = mapToFirestore(liveKitTokenParams.toMap());

  // Add any Firestore field values
  liveKitTokenParams.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLiveKitTokenParamsListFirestoreData(
  List<LiveKitTokenParamsStruct>? liveKitTokenParamss,
) =>
    liveKitTokenParamss
        ?.map((e) => getLiveKitTokenParamsFirestoreData(e, true))
        .toList() ??
    [];
