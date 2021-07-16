import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'Alou, pet!'));
}

class AppWidget extends StatelessWidget {
  final title;

  const AppWidget({Key? key, this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(this.title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.brown, fontSize: 50)),
    ));
  }
}
