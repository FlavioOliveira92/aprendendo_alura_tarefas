import 'package:aprendendo_alura_tarefas/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(children: const [
          Task(
            'Aprender Flutter',
            'assets/images/dash.png',
            3,
          ),
          Task(
            'Andar de Bike',
            'assets/images/bike.webp',
            2,
          ),
          Task(
            'Meditar',
            'assets/images/meditar.jpeg',
            4,
          ),
          Task(
            'Ler',
            'assets/images/livro.jpg',
            5,
          ),
          Task(
            'Jogas',
            'assets/images/jogar.jpg',
            1,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}

