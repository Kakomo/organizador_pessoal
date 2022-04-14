import 'package:flutter/material.dart';

import '../components/tarefa.dart';
class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: AnimatedOpacity(
        opacity: opacidade ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children:  const [
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
            Tarefas(
                'Estudar Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                'PC',
                2,
                0.1),
            Tarefas(
                'Estudar Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                'PC',
                2,
                0.1),Tarefas(
                'Estudar Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                'PC',
                2,
                0.1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
