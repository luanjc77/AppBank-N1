import 'package:appbank/Config.dart';
import 'package:appbank/Home.dart';
import 'package:appbank/Usuario.dart';
import 'package:flutter/material.dart';


class TradePage extends StatefulWidget {
  const TradePage({Key? key});

  @override
  _TradePageState createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color.fromARGB(255, 80, 80, 80),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'), // Substitua pelo caminho correto do seu GIF
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 75,),
              Container(
                padding: EdgeInsets.all(25),
                child:Column(
                  children: <Widget>[
                    const SizedBox(width: 1),
                    const Text(
                        'Make Payment',
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
                                    BorderSide(color: const Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 35,),
                          TextFormField(
                            autofocus: true,
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
                                    BorderSide(color: const Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 35,),
                          TextFormField(
                            autofocus: true,
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
                                    BorderSide(color: const Color.fromARGB(167, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 55,),
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
                                          backgroundColor: Color.fromARGB(99, 39, 39, 39), // Ajuste o tamanho do botão aqui
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
                                      const SizedBox(width: 20,), 
                                      const Text(
                                        '634,12',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35, // Tamanho do título
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(width: 20,),
                                      ElevatedButton(
                                        onPressed: () {
                                          
                                        },
                                        style: ElevatedButton.styleFrom(
                                          //padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25), // Ajuste o tamanho do botão aqui
                                          backgroundColor: Color.fromARGB(99, 39, 39, 39),
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
                                  onPressed: () {
                                    
                                  },
                                  style: ElevatedButton.styleFrom(
                                    //padding: EdgeInsets.symmetric(horizontal: 100,vertical: 25), // Ajuste o tamanho do botão aqui
                                    //backgroundColor: Color.fromARGB(99, 39, 39, 39),
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
                                'Send',
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