import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class HomePageState extends State<HomePage> {
  int count = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Center(
          child: Container(height: 100, width: 100, color: Colors.green),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );

    /*Container(
      
    );*/
  }
}
