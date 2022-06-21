// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const cadlogin(),
    );
  }
}

class cadlogin extends StatelessWidget {
  const cadlogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/images/logo2.png',
            height: 300,
            width: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 20),
                    child: Text(
                      'Ainda não tem uma conta ? Cadastre-se',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      height: 50.0,
                      minWidth: 200,
                      child: RaisedButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const bottombar())),
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ), //Text
                        color: Colors.white,
                      ), //RaisedButton
                    ),
                  ],
                ),
              )
            ]),
          ),
        ]),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 114, 6, 221),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      ),
    );
  }
}
