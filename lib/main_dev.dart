import 'package:flutter/material.dart';
import 'package:flutter_environment/environment.dart';
import 'package:flutter_environment/main.dart';

void main() {
  initialize();

  const String kAPI_HOST = "http://localhost:3000";

  var config = Environment(
    appName: "헬로월드-DEV",
    flavorName: "Runner-Dev",
    apiBaseUrl: kAPI_HOST,
    child: MyApp(),
  );

  runApp(config);
}
