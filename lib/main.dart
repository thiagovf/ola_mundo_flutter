import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'Alou, pet!'));
}

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

class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('Contador: $count'),
          onTap: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}
