import 'package:appbank/addContato.dart';
import 'package:flutter/material.dart';
import 'package:appbank/telas/Login.dart';
import 'package:appbank/telas/Cadastro.dart';
import 'package:appbank/telas/Capa.dart';
import 'package:appbank/telas/Home.dart';
import 'package:appbank/telas/Config.dart';
import 'package:appbank/telas/Usuario.dart';
import 'package:appbank/telas/Trade.dart';
import 'package:appbank/firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:appbank/firebase/teste.dart';

import 'package:appbank/listaContatos.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        
        title: 'AppBank',
        theme: ThemeData(primaryColor: Colors.deepPurple),
        home: TradePage(),
        debugShowCheckedModeBanner: false,
      );
      
    }
  }