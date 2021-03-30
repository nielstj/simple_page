import 'package:flutter/material.dart';
import 'package:simple_page/home.dart';

class SimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(),
      );
}
