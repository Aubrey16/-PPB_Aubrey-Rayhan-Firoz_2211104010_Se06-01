import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ungui13/pages/add_note_page.dart';
import 'package:ungui13/pages/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Catatan Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/add-note', page: () => AddNotePage()),
      ],
    );
  }
}
