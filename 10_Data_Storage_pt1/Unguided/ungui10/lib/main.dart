import 'package:flutter/material.dart';
import 'helper/db_helper.dart';
import 'helper/my_db_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQLite Biodata Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    final allRows = await dbHelper.queryAllRows();
    setState(() {
      _data = allRows;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite Biodata Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          final item = _data[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['Nama'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text("NIM      : ${item['Nim']}"),
                  Text("Alamat : ${item['Alamat']}"),
                  Text("Hobi    : ${item['Hobi']}"),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const IsiDatabase()),
          );
          _fetchData(); 
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
