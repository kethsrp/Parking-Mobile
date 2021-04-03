import 'package:estacionamento/telas/cadastro.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Icon(Icons.local_parking,
        color: Colors.white,
        size: 50.0,),
        Center(
            child: Image.asset(
          'assets/parking.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        )),
        Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.5)),
                      labelText: 'Usuário',
                      icon: Icon(Icons.person_outline, color: Colors.white)),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.5),
                    ),
                    labelText: 'Senha',
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
              ),
              Center(
                  child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                color: Colors.white,
                child: Text("Entrar"),
              )),
              Center(
                child: FlatButton(
                  onPressed: () => {},
                  child: Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ])),
      ]),
    );
  }
}
