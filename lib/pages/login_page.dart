import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        padding: EdgeInsets.only(left: 20, top: 80, right: 20, bottom: 40),
        child: Column(
          children: <Widget>[
            Container(
              height: 450,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                new BoxShadow(
                  color: Colors.black12,
                  offset: new Offset(1, 2.0),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Bem-Vindo!!',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                            Text('Faça Login para continuar'),
                          ],
                        ),
                        FlatButton(onPressed: () {}, child: Text('Teste')),
                      ],
                    ),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          )),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          )),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
