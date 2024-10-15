import 'package:flutter/material.dart';
import 'package:notesapp/widgets/show%20model%20sheet/custom_bottom.dart';
import 'package:notesapp/widgets/show%20model%20sheet/custom_text_form_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTextFormFeild(
            hintText: 'Title',
            obscureText: false,
          ),
          CustomTextFormFeild(
            hintText: 'Content',
            obscureText: false,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomBottom(
              color: const Color.fromARGB(255, 5, 219, 235),
              text: 'Add',
            ),
          ),
        ],
      ),
    );
  }
}
