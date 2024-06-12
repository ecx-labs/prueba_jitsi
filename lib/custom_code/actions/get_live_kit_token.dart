// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

import 'package:http/http.dart' as http;

Future getLiveKitToken(LiveKitTokenParamsStruct dataTypeLiveKit) async {
  String token = '';
  const String baseUrl =
      "https://livekit-server-lduoxxoxwq-uc.a.run.app/lk/createLkToken";
  Uri uri = Uri.parse(baseUrl);
  var headers = {'Content-Type': 'application/json'};
  final qParams = {
    "duration": dataTypeLiveKit.duration,
    "identity": dataTypeLiveKit.identity,
    "roomName": dataTypeLiveKit.roomName
  };
  // http.Response response;
  var request = http.Request('POST', uri);

  request.body = json.encode(qParams);
  request.headers.addAll(headers);

  // http.StreamedResponse response = await request.send();
  try {
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print("probando ${response.body}");
      var result = await response.stream.bytesToString();
      // jsonDecode(result)['token'];
      // print(jsonDecode(response.body)['token']);
      // token = jsonDecode(response.body)['token'];
      token = jsonDecode(result)['token'];
      print(token);
    }
  } catch (e) {
    //print("Error");
    return token = "";
  }
  return token;
}
