import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Biodata"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          SizedBox(
            height: 200,
            width: 600,
            child: Image.network(
              'https://static.zerochan.net/Tearlaments.Rulkallos.full.3976693.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 40),
          const Row(
            children: [
              Text('Nama : ', style: TextStyle(fontSize: 20)),
              Text('Aubrey Rayhan Firoz', style: TextStyle(fontSize: 20))
            ],
          ),
          const Row(
            children: [
              Text("Nim    : ", style: TextStyle(fontSize: 20)),
              Text("2211104100", style: TextStyle(fontSize: 20))
            ],
          ),
          const Row(
            children: [
              Text("Kelas  : ", style: TextStyle(fontSize: 20)),
              Text("Se06-01" , style: TextStyle(fontSize: 20))
            ],
          ),
          Container(
            height: 25,
            color: Colors.lightBlue.shade100,
          )
        ],
      ),
    );
  }
}