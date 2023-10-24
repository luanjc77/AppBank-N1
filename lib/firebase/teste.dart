// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:dio/dio.dart';
import 'package:appbank/firebase/firebase_options.dart';


//IMAGEM

// ignore: camel_case_types
class Noticia_Imagem extends StatelessWidget {
  const Noticia_Imagem({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance.collection('trade').doc('1').get(),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Algo deu errado");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("O documento não existe");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic>? data =
              snapshot.data!.data() as Map<String, dynamic>?;
          final tituloText = data?['teste'] ?? 'Texto não existe';

          return Container(
            width: 300, 
            height: 100, 
            alignment: Alignment.center,
            child: Text(
              tituloText,
              style: const TextStyle(fontSize: 18.0, color: Colors.green, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          );
        }
        return const Text("Carregando");
      },
    );
  }
}