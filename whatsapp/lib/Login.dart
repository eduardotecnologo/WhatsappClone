import 'package:flutter/material.dart';

import 'screen_cadastro.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff075E54)),
        padding: EdgeInsets.all(16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Image.asset(
                      "img/logo.png",
                      width: 200,
                      height: 150
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "E-mail",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32)
                        )
                      ),
                    ),
                  ),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Senha",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 10),
                      child: RaisedButton(
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.green,
                        padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)
                        ),
                        onPressed: () {}),
                    ),
                    Center(
                      child: GestureDetector(
                        child: Text(
                          "N??o tem conta? Cadastre-se",
                          style: TextStyle(
                            color: Colors.white
                          )
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                             MaterialPageRoute(
                               builder: (context) => Cadastro()
                             ));
                        },
                      )
                    )
                ],
              )
            ),
          )
        )
      );
    }
  }