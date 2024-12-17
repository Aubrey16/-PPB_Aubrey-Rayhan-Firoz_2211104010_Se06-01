import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gui13/view/detail.dart';
import 'package:gui13/view_model/Homepage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyMain(),
  ));
}

class MyMain extends StatelessWidget {
  const MyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage(title: "Counter")),
        GetPage(name: '/detail', page: () => Detail()),
      ],
      title: 'Counter',
      home: HomePage(title: "Counter"),
    );
  }
}