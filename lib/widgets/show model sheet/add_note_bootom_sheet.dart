import 'package:flutter/material.dart';
import 'package:notesapp/constans/colors.dart';
import 'package:notesapp/widgets/show%20model%20sheet/custom_bottom.dart';
import 'package:notesapp/widgets/show%20model%20sheet/custom_text_form_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomBottom(
                color: kprimarycolor,
                text: 'Add',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
