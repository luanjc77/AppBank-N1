//tela de loguin
import 'package:flutter/material.dart';
import 'package:appbank/telas/Usuario.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;

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
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25, // Tamanho do título
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 200),    
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'usuário',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(87, 255, 255, 255)),
                    filled: true,
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: const Color.fromARGB(167, 255, 255, 255)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  autofocus: true,
                  obscureText: !_showPassword,
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'senha',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(87, 255, 255, 255)),
                    filled: true,
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(167, 255, 255, 255)),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),            
                Column(
                  children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const UsuarioPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5), // Ajuste o tamanho do botão aqui
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 70,
                            maxWidth: 180,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Logar',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight:FontWeight.bold,
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 80, 80, 80),
                          //padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5), // Ajuste o tamanho do botão aqui
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 70,
                            maxWidth: 180,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Esqueci a senha',
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
    );
}
}