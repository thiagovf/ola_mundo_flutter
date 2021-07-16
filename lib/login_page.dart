import 'dart:ffi';

import 'package:flutter/foundation.dart';
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
        body: Stack(
      children: [
        Container(
          color: Colors.green,
        ),

        // no lugar do container, poderia usar uma imagem de background com o código comentado abaixo.
        /*
          Image.asset('assets/images/background.jpg'),
        */

        // Container abaixo funcionaria como uma máscara escurecendo o fundo.
        /*
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        */

        _body(),
      ],
    ));
  }

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    child: Image.asset('assets/images/logo.png'),
                    /*child: Image.network(
                    'https://terrazoo.com.br/wp-content/themes/terrazoo-woocommerce-theme/assets/images/terra_zoo_logo_site_sd.png'),*/
                  ),
                  _inputsLogin(),
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget _inputsLogin() {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 20, bottom: 22),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
