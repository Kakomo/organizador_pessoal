import 'package:flutter/material.dart';

class Dificulty extends StatelessWidget {
  final int dificulty;

  const Dificulty(this.dificulty, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(//aula 5.4
      child: Row(
        children: [
          Icon(Icons.star,
              size: 15,
              color: (dificulty >= 1) ? Colors.blue : Colors.blue[100]),
          Icon(Icons.star,
              size: 15,
              color: (dificulty >= 2) ? Colors.blue : Colors.blue[100]),
          Icon(Icons.star,
              size: 15,
              color: (dificulty >= 3) ? Colors.blue : Colors.blue[100]),
          Icon(Icons.star,
              size: 15,
              color: (dificulty >= 4) ? Colors.blue : Colors.blue[100]),
          Icon(Icons.star,
              size: 15,
              color: (dificulty >= 5) ? Colors.blue : Colors.blue[100]),
        ],
      ),
    );
  }
}
