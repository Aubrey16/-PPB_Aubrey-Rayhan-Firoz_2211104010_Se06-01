import 'package:flutter/material.dart';

class Flexibleexpanded extends StatelessWidget {
  const Flexibleexpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Expanded'),
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Text(
                    "Flexible takes up the remaining space but can shrink if needed.",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          const SizedBox(height: 20),

          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Text(
                    "Expanded forces the widget to take up all the remaining space.",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ],
      ),
    );
  }
}

