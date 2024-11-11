import 'package:flutter/material.dart';
import 'screens/image_selector_screen.dart';
import 'themes/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Memilih Gambar',
      theme: appThemeData,
      home: const ImageSelectorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
