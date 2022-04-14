import 'package:flutter/material.dart';
import 'package:organizador_pessoal/tarefa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter: Primeiros Passos'),
        ),
        body: ListView(children: const [
          Tarefas('Estudar Flutter', 'PC', 2, 0.5),
          Tarefas('Estudar Flutter', 'PC', 2, 0.5),
          Tarefas('Estudar Flutter', 'PC', 2, 0.5),
        ],),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print('Você apertou o FAB!');
        },child: const Icon(Icons.add),),
      ),
    );
  }
}

