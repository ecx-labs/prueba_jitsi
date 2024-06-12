// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

final meetingNameController = TextEditingController();
final jitsiMeet = JitsiMeet();
Future joinJitsiMeet() async {
  var options = JitsiMeetConferenceOptions(
    serverURL: "https://meet.jit.si",
    room: "test0987test",
    configOverrides: {
      "startWithAudioMuted": true,
      "startWithVideoMuted": true,
      "subject": "JitsiwithFlutter",
      "localSubject": "localJitsiwithFlutter",
    },
    featureFlags: {
      "unsaferoomwarning.enabled": false,
      "security-options.enabled": false
    },
    userInfo: JitsiMeetUserInfo(
        displayName: "Flutter user", email: "user@example.com"),
  );
  await jitsiMeet.join(options);
}
