import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_page/app.dart';

void main() {
  //  Ensure initialized before set preferred orientations
  WidgetsFlutterBinding.ensureInitialized();

  // Set systems preferred orientation
  // Note: make sure to set native iOS (info.plist) and
  //       Android (android_manifest.xml) orientation properly.
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(SimplePage());
}
