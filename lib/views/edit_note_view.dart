import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_form_feild.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "EditNoteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.done,
              onPressed: () {
                Navigator.pushNamed(context, NotesViews.id);
              },
            ),
            const SizedBox(height: 32),
            const CustomTextFormFeild(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextFormFeild(
              hintText: 'Content',
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
