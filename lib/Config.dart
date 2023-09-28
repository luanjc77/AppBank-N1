import 'package:flutter/material.dart';
import 'package:appbank/Home.dart';
import 'package:appbank/Usuario.dart';
import 'package:appbank/Trade.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key});

  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {

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
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50,),            
              Column(
                children: <Widget>[
                   const Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24, // Tamanho do título
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 65,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        //padding: EdgeInsets.symmetric(horizontal: 190, vertical: 25), // Ajuste o tamanho do botão aqui
                      ),
                      child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 70,
                            //maxWidth: 280,
                          ),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'My Card',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.bold,
                                )
                               ),
                            ],
                          ),
                        ),
                    ),
                    const SizedBox(height: 25,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        //padding: EdgeInsets.symmetric(horizontal: 190, vertical: 25), // Ajuste o tamanho do botão aqui
                      ),
                      child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 70,
                            //maxWidth: 280,
                          ),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Create New Card',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.bold,
                                )
                             )  ,
                            ],
                          ),
                        ),
                    ),
                    const SizedBox(height: 25,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        //padding: EdgeInsets.symmetric(horizontal: 190, vertical: 25), // Ajuste o tamanho do botão aqui
                      ),
                      child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 70,
                            //maxWidth: 280,
                          ),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Create New Card',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.bold,
                                )
                               ),
                            ],
                          ),
                        ),
                    ),
                    const SizedBox(height: 25,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        //padding: EdgeInsets.symmetric(horizontal: 190, vertical: 25), // Ajuste o tamanho do botão aqui
                      ),
                      child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 70,
                            //maxWidth: 280,
                          ),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Spanding Limite',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.bold,
                                )
                               ),
                            ],
                          ),
                        ),
                    ),
                    const SizedBox(height: 25,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        //padding: EdgeInsets.symmetric(horizontal: 190, vertical: 25), // Ajuste o tamanho do botão aqui
                      ),
                      child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 70,
                            //maxWidth: 280,
                          ),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Security Settings',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.bold,
                                )
                               ),
                            ],
                          ),
                        ),
                    ),
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
              icon: Icon(Icons.monetization_on),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const TradePage()));
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.stacked_line_chart),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.person),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const UsuarioPage()));
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(Icons.settings),
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