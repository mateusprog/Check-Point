// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'bottombar.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Point'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(children: [
        Container(
          color: Colors.purple,
          height: 200,
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Mateus',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('14:01:05',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
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
                    child: Column(children: const [
                      Text(
                        "Localização Atual",
                        style: TextStyle(color: Colors.purple, fontSize: 15),
                      ),
                      Text(
                        'Pedro II / PI',
                        style: TextStyle(color: Colors.purple, fontSize: 8),
                      )
                    ]),
                    color: Colors.white,
                  ), //RaisedButton
                ),
              ],
            )
          ]),
        ),
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonTheme(
                height: 50.0,
                minWidth: MediaQuery.of(context).size.width * 0.5,

                child: RaisedButton(
                  elevation: 0,
                  onPressed: () => {},
                  child: Column(children: const [
                    SizedBox(height: 10),
                    Text(
                      "Entrada",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ]),
                  color: Colors.purple,
                ), //RaisedButton
              ),
              ButtonTheme(
                height: 50.0,
                minWidth: MediaQuery.of(context).size.width * 0.5,

                child: RaisedButton(
                  onPressed: () => {},
                  child: Column(children: const [
                    SizedBox(height: 10),
                    Text(
                      "Saída",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 15,
                      ),
                    ),
                  ]),
                  color: Colors.white,
                ), //RaisedButton
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Ink.image(
                      image: const AssetImage('assets/images/person.png'),
                      width: 170,
                      height: 170,
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, right: 40),
                  height: 40,
                  width: 250,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      labelText: 'Password',
                      icon: Icon(Icons.lock, color: Colors.purple),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      height: 50.0,
                      minWidth: 300,
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
                          "Bater Ponto",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ), //Text
                        color: Colors.purple,
                      ), //RaisedButton
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
