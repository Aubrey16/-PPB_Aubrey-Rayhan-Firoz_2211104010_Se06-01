import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';

class AddNotePage extends StatelessWidget {
  final NoteController noteController = Get.find<NoteController>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Catatan Baru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Judul'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Deskripsi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text.trim();
                final description = descriptionController.text.trim();
                if (title.isNotEmpty && description.isNotEmpty) {
                  noteController.addNote(title, description);
                  Get.back();
                } else {
                  Get.snackbar(
                    'Error',
                    'Judul dan deskripsi tidak boleh kosong',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              child: Text('Simpan Catatan'),
            ),
          ],
        ),
      ),
    );
  }
}
