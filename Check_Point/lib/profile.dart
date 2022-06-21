import 'package:check_point/bottombar.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Meu Perfil',
        ),
        leading: Drawer(
          backgroundColor: Colors.purple,
          elevation: 0,
          child: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const bottombar()));
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
      ),
      body: Center(
          child: Container(
        color: Colors.purple,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/perfil.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Mateus França ',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              )
            ]),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.smartphone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '06/06/2022',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '      829.211.112-82',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '        (86) 93619-2133',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '               Mateus@gmail.com',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'visualize os termos e condições de uso',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              height: 40,
              width: 400,
              child: const Text(
                'Editar ',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
