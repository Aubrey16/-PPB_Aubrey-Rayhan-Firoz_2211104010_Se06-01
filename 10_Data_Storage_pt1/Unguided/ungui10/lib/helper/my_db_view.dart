import 'package:flutter/material.dart';
import '../helper/db_helper.dart';
import 'package:ungui10/main.dart';

class IsiDatabase extends StatefulWidget {
  const IsiDatabase({super.key});

  @override
  _isiDatabase createState() => _isiDatabase();
}

class _isiDatabase extends State<IsiDatabase> {
  final _formKey = GlobalKey<FormState>();
  final dbHelper = DatabaseHelper();
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _alamatController = TextEditingController();
  final _hobiController = TextEditingController();

  void _saveData() async {
    if (_formKey.currentState!.validate()) {
      final nim = int.tryParse(_nimController.text);
      if (nim == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('NIM harus berupa angka')),
        );
        return;
      }

      await dbHelper.insert({
        'Nim': nim,
        'Nama': _namaController.text,
        'Alamat': _alamatController.text,
        'Hobi': _hobiController.text,
      });

      Navigator.pop(context); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Biodata Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harap masukkan nama';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _nimController,
                decoration: const InputDecoration(
                  labelText: 'NIM',
                  prefixIcon: Icon(Icons.confirmation_number),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harap masukkan NIM';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _alamatController,
                decoration: const InputDecoration(
                  labelText: 'Alamat',
                  prefixIcon: Icon(Icons.home),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harap masukkan alamat';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _hobiController,
                decoration: const InputDecoration(
                  labelText: 'Hobi',
                  prefixIcon: Icon(Icons.sports_basketball),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Harap masukkan hobi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveData,
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
