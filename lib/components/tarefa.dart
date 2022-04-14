import 'package:flutter/material.dart';


class Tarefas extends StatefulWidget {
  final String nome;
  final String foto;
  final String lugar;
  final int tempo;
  final double dificuldade;

  const Tarefas(this.nome,this.foto, this.lugar, this.tempo, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Tarefas> createState() => _TarefasState();
}

class _TarefasState extends State<Tarefas> {
  int level = 1;

  void levelUp() {
    setState(() {
      level++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.nome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    color: Colors.black26,
                  ),
                  child: Image.network(widget.foto,height: 110,width: 80,fit:BoxFit.cover,),
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Onde:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.lugar,
                        style: const TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                      const Text(
                        'Horas: ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${widget.tempo} hrs',
                        style: const TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                      const Text(
                        'Dificuldade:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.dificuldade.toString(),
                        style: const TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Level: $level'),
                    ElevatedButton(
                      onPressed: levelUp,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_circle_up,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: ((level/widget.dificuldade)/100),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
