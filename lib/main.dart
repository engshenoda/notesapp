import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:notesapp/views/edit_note_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesViews(),
      routes: {
         EditNoteView.id: (context) => const EditNoteView(),
         NotesViews.id: (context) => const NotesViews(),
      }
    );
  }
}
