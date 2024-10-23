import 'package:flutter/material.dart';
import 'package:notesapp/constans/colors.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_bottom.dart';
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
            CustomAppBar(
              icon: Icons.done,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 32),
            CustomTextFormFeild(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFormFeild(
              hintText: 'Content',
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
