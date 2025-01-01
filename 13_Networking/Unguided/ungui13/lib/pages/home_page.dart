import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';

class HomePage extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Catatan'),
      ),
      body: Obx(() {
        if (noteController.notes.isEmpty) {
          return Center(child: Text('Tidak ada catatan'));
        }
        return ListView.builder(
          itemCount: noteController.notes.length,
          itemBuilder: (context, index) {
            final note = noteController.notes[index];
            return Card(
              child: ListTile(
                title: Text(note.title),
                subtitle: Text(note.description),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    noteController.removeNoteAt(index);
                  },
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add-note'),
        child: Icon(Icons.add),
      ),
    );
  }
}
