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
      body: Center(
        child: GestureDetector(
          child: Text(
            'Contador: $count',
            style: TextStyle(fontSize: 28),
          ),
          onTap: () {
            setState(() {
              count++;
            });
          },
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
