import 'package:flutter/material.dart';
import 'package:appbank/telas/Home.dart';
import 'package:appbank/telas/Config.dart';
import 'package:appbank/telas/Trade.dart';

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({Key? key});

  @override
  _UsuarioPageState createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {

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
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 15,),            
              Column(
                children: <Widget>[
                  const SizedBox(width: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Image.asset(
                          'images/Cadastro.png', // Substitua pelo caminho correto da sua imagem
                          height: 200,
                        ),
                    const Text(
                          'Billie E. Davis',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35, // Tamanho do título
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                     ],
                    ),
                    const Text(
                        'Total Reward',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25, // Tamanho do título
                        ),
                        textAlign: TextAlign.center,
                      ),
                    const SizedBox(height: 10,),
                    const Text(
                      '634,12',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35, // Tamanho do título
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child : Row(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[ 
                            ElevatedButton(
                                onPressed: () {
                                  
                                },
                                style: ElevatedButton.styleFrom(
                                  //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                                  //backgroundColor: Color.fromARGB(99, 39, 39, 39), // Ajuste o tamanho do botão aqui
                                ),
                                child: Container(
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                    maxWidth: 150,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Transfer In',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight:FontWeight.bold,
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 45,), 
                              ElevatedButton(
                                onPressed: () {
                                  
                                },
                                style: ElevatedButton.styleFrom(
                                  //padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25), // Ajuste o tamanho do botão aqui
                                  backgroundColor: Color.fromARGB(177, 202, 0, 0),
                                ),
                                child: Container(
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                    maxWidth: 150,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Transfer Out',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight:FontWeight.bold,
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ), 
                      ] ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                        'Activity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25, // Tamanho do título
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 25,),
                      const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: 
                            Text(
                              '-10.000 USD',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15, // Tamanho do título
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
                                fontSize: 15, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                   const SizedBox(height: 25),
                   const Row(children: [
                      SizedBox(height: 15,),
                      Expanded(
                          child: 
                            Text(
                              '-10.000 USD',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15, // Tamanho do título
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
                                fontSize: 15, // Tamanho do título
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
                              '+10.000 USD',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15, // Tamanho do título
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
                                fontSize: 15, // Tamanho do título
                                //fontWeight: FontWeight.bold,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                            ),
                        ],),
                        const SizedBox(height: 25),    
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
            Spacer(),
            IconButton(
              icon: Icon(Icons.stacked_line_chart),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.person),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const UsuarioPage()));
              },
            ),
            Spacer(),
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