import 'package:flutter/material.dart';
import '../helper/db_helper.dart';

class IsiDatabase extends StatefulWidget {
  const IsiDatabase({super.key});

  @override
  State<IsiDatabase> createState() => _IsiDatabaseState();
}

class _IsiDatabaseState extends State<IsiDatabase> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _dbData = [];
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    _refreshData();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _refreshData() async {
    final allRows = await dbHelper.queryAllRows();
    setState(() {
      _dbData = allRows;
    });
  }

  void _addData() async {
    if (_titleController.text.isEmpty || _descriptionController.text.isEmpty) return;

    await dbHelper.insert({
      'title': _titleController.text,
      'description': _descriptionController.text,
    });

    _titleController.clear();
    _descriptionController.clear();
    _refreshData();
  }

  void _deleteData(int id) async {
    await dbHelper.delete(id);
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Database Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
          ),
          ElevatedButton(
            onPressed: _addData,
            child: const Text('Add Data'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _dbData.length,
              itemBuilder: (context, index) {
                final item = _dbData[index];
                return ListTile(
                  title: Text(item['title']),
                  subtitle: Text(item['description']),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteData(item['id']),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
