import 'package:flutter/cupertino.dart';

import 'home_page.dart';

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
