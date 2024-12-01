import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:notesapp/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.notes});

  final NoteModel notes;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: notes,),
    );
  }
}
