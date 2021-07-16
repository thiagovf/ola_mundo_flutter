import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo_flutter/custom_switch.dart';

import 'app_controller.dart';
import 'home_page.dart';

class HomePageState extends State<HomePage> {
  int count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contador: $count'),
              Container(
                height: 10,
              ),
              CustomSwitch(),
              Container(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          )),
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
