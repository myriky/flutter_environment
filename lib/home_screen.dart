import 'package:flutter/material.dart';
import 'package:flutter_environment/environment.dart';
import 'package:package_info/package_info.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _buildMode;
  String _packageName;
  String _buildNumber;

  @override
  void initState() {
    _initPackageInfo();
    super.initState();
  }

  Future<Null> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();

    setState(() {
      _buildMode = currentBuildMode();
      _packageName = info.packageName;
      _buildNumber = info.buildNumber;
    });
  }

  String currentBuildMode() {
    if (const bool.fromEnvironment('dart.vm.product')) {
      return "RELEASE";
    }
    var result = "PROFILE";
    assert(() {
      result = "DEBUG";
      return true;
    }());
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Environment.of(context).appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("PackageName : $_packageName"),
            Text("BuildMode : $_buildMode"),
            Text("BuildNumber : $_buildNumber"),
            Text("Flavor : ${Environment.of(context).flavorName}"),
            Text("API HOST : ${Environment.of(context).apiBaseUrl}")
          ],
        ),
      ),
    );
  }
}
