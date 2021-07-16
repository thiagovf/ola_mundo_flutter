import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo_flutter/custom_switch.dart';

class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                  'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg'),
            ),
            accountName: Text('Thiago'),
            accountEmail: Text('thiago@thiago'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            subtitle: Text('Tela Início'),
            onTap: () {
              print('home');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair'),
            subtitle: Text('Finalizar sessão'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      )),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }

  Widget _body() {
    return Container(
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
        ));
  }
}
