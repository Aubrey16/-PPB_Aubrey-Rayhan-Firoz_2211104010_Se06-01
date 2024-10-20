import 'package:antarmuka/flexibleexpanded.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Antarmuka Pengguna',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.blue
        )
      ),
      home: const Flexibleexpanded(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
