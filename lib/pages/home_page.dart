import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 50),
            child: Icon(
              Icons.wb_sunny_outlined,
              size: 100,
              color: Colors.purple.shade100,
            ),
          ),
          Card(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 10, bottom: 25),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
