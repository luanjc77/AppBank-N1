import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:appbank/telas/Home.dart';
import 'package:appbank/telas/Usuario.dart';
import 'package:appbank/telas/Trade.dart';
import 'package:appbank/telas/Config.dart';

class Trade {
  final String valor;
  final String nome;

  Trade({
    required this.valor, 
    required this.nome,
  });
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<DocumentSnapshot>> _transferencia;

  @override
  void initState() {
    super.initState();
    _transferencia = getAllTrades();
  }

  Future<List<DocumentSnapshot>> getAllTrades() async {
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('trades').get();
  if (querySnapshot.docs.isNotEmpty) {
    return querySnapshot.docs;
  } else {
    return [];
  }
}

 @override
Widget build(BuildContext context) {
  return Scaffold(
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
          'Histórico de Transferências',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 15,),
        const Divider(color: Color.fromARGB(255, 196, 196, 196),),
        Expanded(
          child: FutureBuilder<List<DocumentSnapshot>>(
            future: _transferencia,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Trade> trades = snapshot.data!.map((doc) => Trade(
                  valor: doc['valor'],
                  nome: doc['nome'],
                )).toList();
                return ListView.builder(
                  itemCount: trades.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      subtitle: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Nome:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(width: 5,),
                              Text(trades[index].nome,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('R\$:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(width: 5,),
                              Text(trades[index].valor,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                            ],
                          ),
                          const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                        ],
                      ),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Erro ao buscar transferencias'));
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
                Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
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

  
  

      