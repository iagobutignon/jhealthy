import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jhealthy/model/treinoModel.dart';

class Treino extends StatefulWidget {
  @override
  _Treino createState() => _Treino();
}

class _Treino extends State<Treino> {
  var db = FirebaseFirestore.instance;
  List<TreinoModel> treinos = List();

  //Ouvir todos os eventos que ocorrem na coleção
  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

    //Quando ocorrer um "evento" na coleção, recuperar todos
    //os documentos
    listen?.cancel();
    listen = db.collection("treinos").snapshots().listen((res) {
      //converter todos os documentos em objetos
      setState(() {
        treinos = res.docs.map((e) => TreinoModel.fromMap(e.data(), e.id)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Treinos"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 152, 0),
      ),
      
      body: Container(
        color: Color.fromARGB(200, 252, 209, 134),
        child: StreamBuilder<QuerySnapshot>(
            stream: db.collection("treinos").snapshots(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(child: Text('Erro de conexao'));
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  return ListView.builder(
                    itemCount: treinos.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(treinos[index].titulo,
                            style: TextStyle(fontSize: 24)),
                        subtitle: Text(treinos[index].titulo,
                            style: TextStyle(fontSize: 16)),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            db.collection("treinos").doc(treinos[index].id).delete();
                          },
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/novo_treino',
                              arguments: treinos[index].id);
                        },
                      );
                    },
                  );
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 240, 152, 0),
        elevation: 0,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/novo_treino", arguments: null);
        },
      ),
    );
  }
}
