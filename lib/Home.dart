//Home page que tem os botoes de cadastro e de login
import 'package:appbank/Config.dart';
import 'package:appbank/Usuario.dart';
import 'package:appbank/Trade.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 80, 80, 80),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'), // Substitua pelo caminho correto do seu GIF
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(15),
        child: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 15,),            
              Column(
                children: <Widget>[
                  //const SizedBox(width: 25),
                  const Text(
                      'Account Overview',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24, // Tamanho do título
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25),
                    Image.asset(
                      'images/graph.gif', // Substitua pelo caminho correto da sua imagem
                      height: 200,
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: 
                            Text(
                              '-15.550,00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                        ),
                      //SizedBox(width: 450,),
                      Expanded(
                        child: 
                            Text(
                              'Lorem Ypsom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                    //SizedBox(height: 15,),
                   const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                   const SizedBox(height: 25),
                   const Row(children: [
                      SizedBox(height: 15,),
                      Expanded(
                          child: 
                            Text(
                              '+15.550,00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                        ),
                      //SizedBox(width: 450,),
                      Expanded(
                        child: 
                            Text(
                              'Lorem Ypsom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                        const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                        const SizedBox(height: 25),
                        const Row(children: [
                      SizedBox(height: 15,),
                      Expanded(
                          child: 
                            Text(
                              '-15.550,00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                        ),
                      //SizedBox(width: 450,),
                      Expanded(
                        child: 
                            Text(
                              'Lorem Ypsom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                        const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                        const SizedBox(height: 25),
                        const Row(children: [
                      SizedBox(height: 15,),
                      Expanded(
                          child: 
                            Text(
                              '+30.500,00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                        ),
                      //SizedBox(width: 450,),
                      Expanded(
                        child: 
                            Text(
                              'Lorem Ypsom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                        const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                        const SizedBox(height: 25),
                        const Row(children: [
                      SizedBox(height: 15,),
                      Expanded(
                          child: 
                            Text(
                              '-10.050,00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                        ),
                      //SizedBox(width: 450,),
                      Expanded(
                        child: 
                            Text(
                              'Lorem Ypsom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                        const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                        const SizedBox(height: 25),
                        const Row(children: [
                      SizedBox(height: 15,),
                      Expanded(
                          child: 
                            Text(
                              '+25.550,00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                        ),
                      //SizedBox(width: 450,),
                      Expanded(
                        child: 
                            Text(
                              'Lorem Ypsom',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                      const Divider(color: Color.fromARGB(255, 196, 196, 196),),
                  ],
              ),
            ],
          ),
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