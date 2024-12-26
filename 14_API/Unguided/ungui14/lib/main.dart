import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ungui14/screen/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Catatan',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
      ],
    );
  }
}