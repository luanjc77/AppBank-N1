import 'dart:async';

import 'package:appbank/telas/Config.dart';
import 'package:appbank/telas/Home.dart';
import 'package:appbank/telas/Usuario.dart';
import 'package:appbank/firebase/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/utils/stream_subscriber_mixin.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TradePage extends StatefulWidget {
  const TradePage({Key? key});

  @override
  _TradePageState createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  String? nome, id;

  uploadData()async{
    Map<String,dynamic> uploaddata={
      "nome": nomecontroler.text,
      "valor": valorcontroler.text,
    };

    await DatabaseMethods().addValorDetails(uploaddata);
    Fluttertoast.showToast(
        msg: "Transferência Realizada com Sucesso !!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  TextEditingController nomecontroler = new TextEditingController();
  TextEditingController phonecontroler = new TextEditingController();
  TextEditingController cpfcontroler = new TextEditingController();
  TextEditingController valorcontroler = new TextEditingController();

  searchName(String nome)async{
    QuerySnapshot querySnapshot = await DatabaseMethods().getthisUserInfo(nome);

    nome = "${querySnapshot.docs[0]["nome"]}";
    id = querySnapshot.docs[0].id;

    setState(() {
    });
    Fluttertoast.showToast(
        msg: "Existe!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
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
        padding: const EdgeInsets.all(5),
        child: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 55,),
              Container(
                padding: const EdgeInsets.all(15),
                child:Column(
                  children: <Widget>[
                    const SizedBox(width: 1),
                    const Text(
                        'Make Payment',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35, 
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
                          const SizedBox(height: 25,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 100),
                            child: TextFormField(
                            autofocus: true,
                            controller: valorcontroler,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Valor R\$',
                              hintStyle:
                                  TextStyle(color: Color.fromARGB(87, 255, 255, 255)),
                              filled: true,
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          ),
                          const SizedBox(height: 25,),
                          Container(
                              padding: const EdgeInsets.all(15),
                              child : Row(
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[ 
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                                          backgroundColor: const Color.fromARGB(99, 39, 39, 39), 
                                        ),
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            minHeight: 70,
                                            maxWidth: 70,
                                          ),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '+',
                                                style: TextStyle(
                                                  fontSize: 50,
                                                  fontWeight:FontWeight.bold,
                                                )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 100,),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          //padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25), 
                                          backgroundColor: const Color.fromARGB(99, 39, 39, 39),
                                        ),
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            minHeight: 70,
                                            maxWidth: 70,
                                          ),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '-',
                                                style: TextStyle(
                                                  fontSize: 50,
                                                  fontWeight:FontWeight.bold,
                                                )
                                              ),
                                            ],
                                          ),
                                        ), 
                                      ), 
                              ] ),
                            ),
                            const SizedBox(height: 25,),
                            ElevatedButton(
                                  onPressed: () async{
                                   uploadData();
                                   //await searchName(valorcontroler.text);
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
                                        'Enviar',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight:FontWeight.bold,
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ), 
                              const SizedBox(height: 25,),
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
                                      maxWidth: 100,
                                    ),
                                          
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Procura',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight:FontWeight.bold,
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ), 
                              const SizedBox(height: 25,),
                              ElevatedButton(
                                  onPressed: () async{
                                    await searchName(nomecontroler.text);
                                    await DatabaseMethods().UpdateValor(phonecontroler.text,cpfcontroler.text,valorcontroler.text, id!);
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
                                      maxWidth: 100,
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
                              const SizedBox(height: 25,),
                              ElevatedButton(
                                  onPressed: () async{
                                   await searchName(nomecontroler.text);
                                   await DatabaseMethods().DeleteValor(id!);
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
                                    backgroundColor: Color.fromARGB(145, 255, 0, 0),
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
                              ]
                            ),  
                            const SizedBox(height: 16),                      
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