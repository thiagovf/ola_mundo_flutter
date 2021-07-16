import 'package:flutter/material.dart';
import 'package:ola_mundo_flutter/custom_switch.dart';
import 'package:ola_mundo_flutter/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                child: Image.asset('assets/images/logo.png'),
                /*child: Image.network(
                    'https://terrazoo.com.br/wp-content/themes/terrazoo-woocommerce-theme/assets/images/terra_zoo_logo_site_sd.png'),*/
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (email == 'thiago@thiago' && password == '123') {
                      // Só com push, mantem a opção de voltar.
                      /*Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));*/

                      // Com o pushReplacement, perde a opção de voltar.
                      /*Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()));*/

                      // Navegação usando as rotas.
                      //Navigator.of(context).pushNamed('/home');
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print("login inválido");
                    }
                  },
                  child: Text('Entrar')),
            ],
          ),
        ),
      ),
    ));
  }
}

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
  }
}
