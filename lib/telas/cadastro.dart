import 'package:flutter/material.dart';


class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final formKey = GlobalKey<FormState>();
  String placa, modelo, cor;
  int radioValor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.directions_car), 
          onPressed: () {

          },),
          IconButton(icon: Icon(Icons.explicit),
          onPressed: (){

          },),
          IconButton(icon: Icon(Icons.description),
          onPressed: (){

          },),
          IconButton(icon: Icon(Icons.dehaze),
          onPressed: (){
          },)
        ],
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio<int>(
                  value: 0, 
                  groupValue: radioValor, 
                  onChanged: null),
                  Text("Hatch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),),
                  Radio(
                    value: 1, 
                    groupValue: radioValor, 
                    onChanged: null),
                  Text("Sedan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),),
                  Radio(
                    value: 2, 
                    groupValue: radioValor, 
                    onChanged: null),
                  Text("Moto",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),)
              ],
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  key:  formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children:<Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Placa'
                        ),
                        validator: (value) {
                          if(value.isEmpty) return "Campo obrigatório não preenchido";
                        }
                      ),
                      TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Modelo'
                            ),
                            validator: (value) {
                          if(value.isEmpty) return "Campo obrigatório não preenchido";
                        }
                      ),
                      TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Cor'
                            ),
                            validator: (value) {
                          if(value.isEmpty) return "Campo obrigatório não preenchido";
                        }
                      ),
                      RaisedButton(onPressed: () => {},
                      child: Text("Confirmar"))
                    ],
                  ),
                ),
              )
            ),
              ]
        ),
      ),
    );
  }
}