import 'package:flutter/material.dart';
import 'package:appbank/telas/Login.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key});

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool _showPassword = false;
  bool _terms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 80, 80, 80),
      //tava como padding 
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
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // Tamanho do título
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
              const SizedBox(height: 16),
              TextFormField(
                autofocus: true,
                //obscureText: !_showPassword,
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
                        BorderSide(color: Color.fromARGB(167, 255, 255, 255)),
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
                  hintText: 'Senha',
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
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _terms,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _terms = newValue!;
                    });
                  },
                  activeColor: Colors.green, // Defina a cor da caixa da Checkbox
                  checkColor: Colors.white,
                ),
                const Text(
                  'Li e aceito os termos e condições',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
              const SizedBox(height: 15,),            
              Column(
                children: <Widget>[
                    ElevatedButton(
                    onPressed: () {
                       Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5), // Ajuste o tamanho do botão aqui
                    ),
                    child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 80,
                            maxWidth: 180,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Register',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight:FontWeight.bold,
                                )
                             )  ,])
                   
                  ),
              )],
              
              ),
            ],
          ),
        ),
      ),
    );
}
}