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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.08,
            right: MediaQuery.of(context).size.width * 0.08,
            top: MediaQuery.of(context).size.width * 0.30,
            bottom: MediaQuery.of(context).size.width * 0.30,
          ),
          child: _formLogin(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/parking.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Image.asset(
      "assets/logo.png",
      width: MediaQuery.of(context).size.width * 0.7,
    );
  }

  Widget _input({ label, icon, obscureText: false, keyboardType: TextInputType.text }) {
    return TextField(
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
        labelText: label,
        icon: Icon(icon, color: Colors.white),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }

  Widget _esqueciMinhaSenha() {
    return FlatButton(
      onPressed: () => {},
      child: Text(
        "Esqueci minha senha",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _entrar() {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => Cadastro()),
        );
      },
      color: Colors.white,
      child: Text("Entrar"),
    );
  }

  Widget _formLogin() {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _logo(),
          _input(
            label: "Usuário",
            icon: Icons.person_outline,
          ),
          _input(
            label: "Senha",
            icon: Icons.lock_outline,
            obscureText: true,
          ),
          _entrar(),
          _esqueciMinhaSenha(),
        ],
      ),
    );
  }
}
