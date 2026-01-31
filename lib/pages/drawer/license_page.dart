import 'package:flutter/material.dart';

class AppLicensePage extends StatefulWidget {
  const AppLicensePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _AppLicensePage();
  }
}

class _AppLicensePage extends State<AppLicensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LicensePage(applicationName: "나가자", applicationVersion: "0.0.1a"),
    );
  }
}
