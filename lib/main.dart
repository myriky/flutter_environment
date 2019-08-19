import 'package:flutter/material.dart';
import 'package:flutter_environment/environment.dart';
import 'package:flutter_environment/home_screen.dart';

void main() {
  initialize();

  const String kAPI_HOST = "https://api.foo-bar.com/v1";

  var config = Environment(
    appName: "헬로월드",
    flavorName: "Runner",
    apiBaseUrl: kAPI_HOST,
    child: MyApp(),
  );

  runApp(config);
}

void initialize() async {
  // 공통으로 main 함수에서 실행해야 하는 것들
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
