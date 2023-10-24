
import 'package:appbank/telas/Config.dart';
import 'package:appbank/telas/Usuario.dart';
import 'package:appbank/telas/Trade.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Contato {
  final String valor;
 
  Contato({
    required this.valor, 
  });
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
late Future<List<DocumentSnapshot>> _contatos;

  @override
  void initState() {
    super.initState();
    _contatos = getAllContacts();
  }

  Future<List<DocumentSnapshot>> getAllContacts() async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('trade').get();
  if (querySnapshot.docs.isNotEmpty) {
    return querySnapshot.docs;
  } else {
    return [];
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 80, 80, 80),
      body: Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/background.png'), 
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      children: [
        const SizedBox(height: 50),
        const Text(
          'Histórico de Transações',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 15,),
        Image.asset(
          'images/graph.gif', // Substitua pelo caminho correto da sua imagem
          height: 90,
        ),
        const Divider(color: Color.fromARGB(255, 196, 196, 196),),
        Expanded(
          child: FutureBuilder<List<DocumentSnapshot>>(
            future: _contatos,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Contato> contatos = snapshot.data!.map((doc) => Contato(
                  valor: doc['Valor'],
                )).toList();
                return ListView.builder(
                  itemCount: contatos.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      subtitle: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Valor:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(width: 5,),
                              Text(contatos[index].valor,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                            ],
                          ),
                          const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                        ],
                      ),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Erro ao buscar contatos'));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    ),
  ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 29, 28, 28),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.monetization_on),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const TradePage()));
              },
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.stacked_line_chart),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.person),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const UsuarioPage()));
              },
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.settings),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const ConfigPage()));
              },
            ),
          ],
        ),
      ),
    );
}
}