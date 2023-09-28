import 'package:flutter/material.dart';
import 'package:appbank/Login.dart';
import 'package:appbank/Cadastro.dart';

class CapaPage extends StatefulWidget {
  const CapaPage({Key? key});

  @override
  _CapaPageState createState() => _CapaPageState();
}

class _CapaPageState extends State<CapaPage> {

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 15,),            
              Column(
                children: <Widget>[
                  const SizedBox(width: 1),
                    Image.asset(
                      'images/logo.png', // Substitua pelo caminho correto da sua imagem
                      //height: 200,
                    ),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Bank',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight:FontWeight.bold,
                            color: Colors.white,
                          )
                        ),
                        Text(
                          'App',
                          style: TextStyle(
                            fontSize: 25,
                            //fontWeight:FontWeight.bold,
                            color: Colors.white,
                          )
                        ),
                    ],
                   ), 
                    
                    const SizedBox(height: 75,),        
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 25), // Ajuste o tamanho do botão aqui
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                          minHeight: 70,
                          maxWidth: 280,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
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
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const CadastroPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(179, 194, 0, 0),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                          minHeight: 70,
                          maxWidth: 280,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight:FontWeight.bold,
                              )
                            ),
                          ],
                        ),
                      ),
                      // child: Ink(
                      //   decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //       colors: [Colors.blue, Color.fromARGB(255, 72, 255, 0)],
                      //       begin: Alignment.topLeft,
                      //       end: Alignment.bottomRight,
                      //     ),
                      //     //borderRadius: BorderRadius.circular(10),
                      //   ),
                    ),
              ],
              ),
            ],
          ),
        ),
      ),
    );
}
}