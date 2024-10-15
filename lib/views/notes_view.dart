import 'package:flutter/material.dart';
import 'package:notesapp/constans/colors.dart';
import 'package:notesapp/widgets/show%20model%20sheet/add_note_bootom_sheet.dart';
import 'package:notesapp/widgets/show%20model%20sheet/custom_text_form_feild.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kprimarycolor,
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
