import 'package:flutter/material.dart';
import 'package:appbank/Login.dart';
import 'package:appbank/Cadastro.dart';
import 'package:appbank/Capa.dart';
import 'package:appbank/Home.dart';
import 'package:appbank/Config.dart';
import 'package:appbank/Usuario.dart';
import 'package:appbank/Trade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        
        title: 'AppBank',
        theme: ThemeData(primaryColor: Colors.deepPurple),
        home: CapaPage(),
        debugShowCheckedModeBanner: false,
      );
      
    }
  }