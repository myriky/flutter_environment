import 'package:flutter/material.dart';

class Environment extends InheritedWidget {
  Environment({
    @required this.appName,
    @required this.flavorName,
    @required this.apiBaseUrl,
    @required Widget child,
  }) : super(child: child);

  final String appName;
  final String flavorName;
  final String apiBaseUrl;

  static Environment of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(Environment);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
