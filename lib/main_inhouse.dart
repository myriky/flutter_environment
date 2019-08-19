import 'package:flutter/material.dart';
import 'package:flutter_environment/environment.dart';
import 'package:flutter_environment/main.dart';

void main() {
  initialize();

  const String kAPI_HOST = "http://inhouse.foo-bar.com/v1";

  var config = Environment(
    appName: "헬로월드-Inhouse",
    flavorName: "Runner-Inhouse",
    apiBaseUrl: kAPI_HOST,
    child: MyApp(),
  );

  runApp(config);
}
