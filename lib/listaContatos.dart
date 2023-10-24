import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:appbank/telas/Home.dart';
import 'package:appbank/telas/Usuario.dart';
import 'package:appbank/telas/Trade.dart';
import 'package:appbank/telas/Config.dart';

class Contato {
  final String nome;
  final String email;
  final String telefone;
  final String cpf;
 
  Contato({
    required this.nome, 
    required this.email, 
    required this.telefone, 
    required this.cpf
  });
}

class ContatoList extends StatefulWidget {
  @override
  _ContatoListState createState() => _ContatoListState();
}

class _ContatoListState extends State<ContatoList> {
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
          'Lista de Contatos',
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
            future: _contatos,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Contato> contatos = snapshot.data!.map((doc) => Contato(
                  nome: doc['nome'],
                  email: doc['email'],
                  telefone: doc['telefone'],
                  cpf: doc['cpf'],
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
                              const Text('Nome:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(width: 5,),
                              Text(contatos[index].nome,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Email:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(width: 5,),
                              Text(contatos[index].email,style: const TextStyle(color: Colors.white,fontSize: 20)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Telefone:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(width: 5,),
                              Text(contatos[index].telefone,style: const TextStyle(color: Colors.white,fontSize: 20)),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('CPF:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                              const SizedBox(width: 5,),
                              Text(contatos[index].cpf,style: const TextStyle(color: Colors.white,fontSize: 20)),
                            ],
                          ),
                          Image.asset(
                          'images/Cadastro.png', // Substitua pelo caminho correto da sua imagem
                          height: 90,
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

  
  

      