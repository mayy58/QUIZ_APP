import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("Quiz de Capitales"),
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: LinearProgressIndicator(
                  color: Colors.amber.shade900,
                  value: .5,
                  minHeight: 20,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 450),
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text("Pregunta 1"),
                        ),
                        Flexible(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (_, index) {
                              return Container(
                                margin: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.indigo.shade100,
                                        width: 2)),
                                child: ListTile(
                                  leading: Text("${index + 1}"),
                                  title: Text("Respuesta"),
                                  onTap: () {},
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Skip"),
            )
          ],
        ));
  }
}
