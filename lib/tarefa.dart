import 'package:flutter/material.dart';

//Tarefa StateLess, será atualizada para StateFull!
class Tarefas extends StatelessWidget {

  final String nome;
  final String lugar;
  final int tempo;
  final double dificuldade;

  const Tarefas(this.nome, this.lugar, this.tempo, this.dificuldade,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int level = 1;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              nome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Onde:',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        lugar,
                        style: const TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                      const Text(
                        'Horas: ',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${tempo} hrs',
                        style: const TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                      const Text(
                        'Dificuldade:',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dificuldade.toString(),
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
                      onPressed: () {
                        level++;
                        print(level);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: CircleBorder(),
                      ),
                      child: Icon(
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
          ],
        ),
      ),
    );
  }
}
