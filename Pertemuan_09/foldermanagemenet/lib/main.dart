import 'package:flutter/material.dart';
import 'package:foldermanagemenet/design_system/styles/color_collections.dart';
import 'package:foldermanagemenet/design_system/styles/spacing_collection.dart';
import 'package:foldermanagemenet/design_system/styles/typography_collection.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(
                'Hello World',
                style: TypographyCollection.H1.copyWith(
                  color: ColorCollections.primary900,
                ),
              ),
              Text('Hello World',
                  style: TextStyle(color: ColorCollections.primary900)),
            ])),
      ),
    );
  }
}
