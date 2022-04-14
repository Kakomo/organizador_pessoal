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
          leading: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              color: Colors.black26,
            ),
            child: Image.network(
              'https://i.ibb.co/cctxpTG/kako-epifania-2022-18-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        body: ListView(
          children: const [
            Tarefas(
                'Estudar Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                'PC',
                2,
                0.5),
            Tarefas(
                'Estudar Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                'PC',
                2,
                1),
            Tarefas(
                'Estudar Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                'PC',
                2,
                0.1),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Você apertou o FAB!');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
