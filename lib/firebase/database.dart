import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  //CRUD de valores
  Future addValorDetails(Map<String,dynamic> valorInfoMap)async{
    return await FirebaseFirestore.instance
    .collection("trade")
    .doc()
    .set(valorInfoMap);
  }

  Future<QuerySnapshot> getthisUserInfo(String name) async{
    return await FirebaseFirestore.instance
        .collection("trade")
        .where("nome",isEqualTo: name)
        .get();
  }
  
  Future UpdateValor(String age, String id) async{
    return await FirebaseFirestore.instance
        .collection("trade")
        .doc(id)
        .update({"age": age});
  }

  Future DeleteValor(String id) async{
    return await FirebaseFirestore.instance
        .collection("trade")
        .doc(id)
        .delete();
  }
  //CRUD Contato
  Future addContatoDetails(Map<String,dynamic> contatoInfoMap)async{
    return await FirebaseFirestore.instance
    .collection("contatos")
    .doc()
    .set(contatoInfoMap);
  }

  Future<QuerySnapshot> getContatoInfo(String name) async{
    return await FirebaseFirestore.instance
        .collection("contatos")
        .where("nome",isEqualTo: name)
        .get();
  }

  Future UpdateContato(String email,String telefone,String cpf,String id) async{
    return await FirebaseFirestore.instance
        .collection("contatos")
        .doc(id)
        .update({"email": email,"telefone":telefone,"cpf":cpf});
  }

  Future DeleteContato(String id) async{
    return await FirebaseFirestore.instance
        .collection("contatos")
        .doc(id)
        .delete();
  }
}