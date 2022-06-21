import 'package:check_point/main.dart';
import 'package:check_point/profile.dart';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset('assets/images/person.png'),
                accountName: const Text(
                  'Mateus França',
                  style: TextStyle(fontSize: 10),
                ),
                accountEmail: const Text('Mateus@gmail.com.br')),
            const SizedBox(
              height: 4,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Histórico de Pontos'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.pending_actions),
              title: const Text('Pontos Pendentes'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.developer_board),
              title: const Text('Mensagens'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
            const SizedBox(
              height: 160,
            ),
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.black12,
              height: 40,
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'Outros',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const cadlogin()));
              },
            ),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Check Point'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
          ],
        ),
        body: Container(
            color: Colors.purple,
            child: Column(children: [
              Container(
                height: 200,
                color: Colors.purple,
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Text(
                    'Bom dia,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text('Mateus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      )),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Sexta,',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                          )),
                      Text(' 4 de Junho',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          )),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 320,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Center(
                    child: ListView(
                      children: [
                        DataTable(columns: const [
                          DataColumn(
                            label: Text(
                              'Horários',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          DataColumn(
                              label: Text(
                            'Entrada/Saída',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Status',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ))
                        ], rows: const [
                          DataRow(cells: [
                            DataCell(Text('17:00')),
                            DataCell(Text('2ª Saída')),
                            DataCell(Icon(
                              Icons.circle,
                              color: Colors.grey,
                            ))
                          ]),
                          DataRow(cells: [
                            DataCell(Text('13:00')),
                            DataCell(Text('2ª Entrada')),
                            DataCell(Icon(
                              Icons.circle,
                              color: Colors.red,
                            ))
                          ]),
                          DataRow(cells: [
                            DataCell(Icon(Icons.restaurant_menu)),
                            DataCell(Text('Intervalo')),
                            DataCell(Icon(
                              Icons.circle,
                              color: Colors.green,
                            ))
                          ]),
                          DataRow(cells: [
                            DataCell(Text('11:00')),
                            DataCell(Text('1ª Saída')),
                            DataCell(Icon(Icons.circle, color: Colors.green))
                          ]),
                          DataRow(cells: [
                            DataCell(Text('7:00')),
                            DataCell(Text('1ª Entrada')),
                            DataCell(Icon(
                              Icons.circle,
                              color: Colors.green,
                            ))
                          ])
                        ]),
                      ],
                    ),
                  ))
            ])));
  }
}
