import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.search,
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
