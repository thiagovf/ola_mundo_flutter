import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo_flutter/home_page.dart';

class AppWidget extends StatelessWidget {
  final title;

  const AppWidget({Key? key, this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}
