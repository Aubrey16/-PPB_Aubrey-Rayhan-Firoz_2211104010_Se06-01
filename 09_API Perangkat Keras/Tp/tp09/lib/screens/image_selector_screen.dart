import 'package:flutter/material.dart';
import '../widgets/image_container.dart';
import '../widgets/action_buttons.dart';

class ImageSelectorScreen extends StatelessWidget {
  const ImageSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Memilih Gambar'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ImageContainer(),
            const SizedBox(height: 20),
            const ActionButtons(),
          ],
        ),
      ),
    );
  }
}
