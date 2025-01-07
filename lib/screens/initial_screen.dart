import 'package:aprendendo_alura_tarefas/components/task.dart';
import 'package:aprendendo_alura_tarefas/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
      ),
      body: ListView(children: const [
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
