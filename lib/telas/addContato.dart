import 'dart:async';
//import 'dart:ffi';
import 'package:appbank/telas/Trade.dart';
import 'package:appbank/telas/Config.dart';
import 'package:appbank/telas/Home.dart';
import 'package:appbank/telas/Usuario.dart';
import 'package:appbank/firebase/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/utils/stream_subscriber_mixin.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContatoPage extends StatefulWidget {
  const ContatoPage({Key? key});

  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  String? nome,email,telefone, cpf, id,emailAtual,telefoneAtual,cpfAtual;
  int? ia;
  //adicionar o contato
  uploadData()async{
    Map<String,dynamic> uploaddata={
      "nome": nomecontroler.text,
      "email": emailcontroler.text,
      "telefone": telefonecontroler.text,
      "cpf": cpfcontroler.text,
    };

    await DatabaseMethods().addContatoDetails(uploaddata);
    Fluttertoast.showToast(
        msg: "Contato Criado com Sucesso!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  // ignore: unnecessary_new
  TextEditingController nomecontroler = new TextEditingController();
  TextEditingController emailcontroler = new TextEditingController();
  TextEditingController telefonecontroler = new TextEditingController();
  TextEditingController cpfcontroler = new TextEditingController();

  //pra procurar um contato existente
  searchName(String nome)async{
    QuerySnapshot querySnapshot = await DatabaseMethods().getContatoInfo(nome);
    if (querySnapshot.docs.isEmpty){
      Fluttertoast.showToast(
        msg: "Esse Contato Não Existe",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }else{
      Fluttertoast.showToast(
        msg: "Contato Existente ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
      nome = "${querySnapshot.docs[0]["nome"]}";
      email = "${querySnapshot.docs[0]["email"]}";
      id = querySnapshot.docs[0].id;
      setState(() {
      });
    }
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
     // backgroundColor: Color.fromARGB(255, 80, 80, 80),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
      child: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 75,),
              Container(
                padding: const EdgeInsets.all(25),
                child:Column(
                  children: <Widget>[
                    const SizedBox(width: 1),
                    const Text(
                        'Novo Contato',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35, // Tamanho do título
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 75,),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                          TextFormField(
                            autofocus: true,
                            controller: nomecontroler,
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Nome',
                              hintStyle:
                                  TextStyle(color: Color.fromARGB(87, 255, 255, 255)),
                              filled: true,
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color:  Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 35,),
                          TextFormField(
                            autofocus: true,
                            controller: emailcontroler,
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              hintStyle:
                                  TextStyle(color: Color.fromARGB(87, 255, 255, 255)),
                              filled: true,
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color:  Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 35,),
                          TextFormField(
                            autofocus: true,
                            controller: telefonecontroler,
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Telefone/Celular',
                              hintStyle:
                                  TextStyle(color: Color.fromARGB(87, 255, 255, 255)),
                              filled: true,
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 35,),
                          TextFormField(
                            autofocus: true,
                            controller: cpfcontroler,
                            keyboardType: TextInputType.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'CPF',
                              hintStyle:
                                  TextStyle(color: Color.fromARGB(87, 255, 255, 255)),
                              filled: true,
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25,),
                          ElevatedButton(
                              onPressed: () async{
                                  uploadData();
                              },
                              style: ElevatedButton.styleFrom(
                              //padding: EdgeInsets.symmetric(horizontal: 100,vertical: 25),
                              backgroundColor: const Color.fromARGB(145, 0, 114, 9),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                minHeight: 70,
                                maxWidth: 100,
                            ),
                            child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    Text(
                                      'Criar',
                                      style: TextStyle(
                                      fontSize: 25,
                                      fontWeight:FontWeight.bold,
                                  )
                                ),
                              ],
                            ),
                           ),
                          ), 
                          const SizedBox(height: 15,),
                          ElevatedButton(
                            onPressed: () async{
                                await searchName(nomecontroler.text); 
                            },
                            style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 100,vertical: 25),
                            backgroundColor: const Color.fromARGB(145, 0, 255, 213),
                          ),
                            child: Container(
                              constraints: const BoxConstraints(
                              minHeight: 70,
                              maxWidth: 500,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                  Text(
                                    'Procurar',
                                    style: TextStyle(
                                    fontSize: 25,
                                    fontWeight:FontWeight.bold,
                                )
                              ),
                              ],
                            ),
                          ),
                        ),  
                      ]
                    ),  
                    const SizedBox(height: 16),   
                    ElevatedButton(
                      onPressed: () async{
                          await searchName(nomecontroler.text); 
                          await DatabaseMethods().UpdateContato(emailcontroler.text,telefonecontroler.text,cpfcontroler.text, id!);
                          Fluttertoast.showToast(
                              msg: "Alterado com Sucesso",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                      },
                      style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.symmetric(horizontal: 100,vertical: 25),
                      backgroundColor: const Color.fromARGB(145, 0, 255, 213),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                        minHeight: 70,
                        maxWidth: 500,
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                              'Alterar',
                              style: TextStyle(
                              fontSize: 25,
                              fontWeight:FontWeight.bold,
                          )
                        ),
                      ],
                    ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () async{
                          await searchName(nomecontroler.text);
                          await DatabaseMethods().DeleteContato(id!);
                          Fluttertoast.showToast(
                              msg: "Deletado com Sucesso",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                      },
                      style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.symmetric(horizontal: 100,vertical: 25),
                      backgroundColor: const Color.fromARGB(150, 186, 0, 0),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                        minHeight: 70,
                        maxWidth: 500,
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                              'Deletar',
                              style: TextStyle(
                              fontSize: 25,
                              fontWeight:FontWeight.bold,
                            )
                          ),
                        ],
                      ),
                      ),
                    ),                  
                  ],
                )
              ),
            ],
          ),
        ),  
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 29, 28, 28),
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
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  HomePage()));
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
