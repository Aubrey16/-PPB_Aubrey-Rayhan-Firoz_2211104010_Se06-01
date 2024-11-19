import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onGalleryPressed;
  final VoidCallback onCameraPressed;
  final VoidCallback onClearPressed;

  const ActionButtons({
    super.key,
    required this.onGalleryPressed,
    required this.onCameraPressed,
    required this.onClearPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: onCameraPressed,
              icon: const Icon(Icons.camera),
              label: const Text('Camera'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
            ),
            const SizedBox(width: 10),
            ElevatedButton.icon(
              onPressed: onGalleryPressed,
              icon: const Icon(Icons.photo),
              label: const Text('Gallery'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: onClearPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          child: const Text('Hapus Gambar'),
        ),
      ],
    );
  }
}
