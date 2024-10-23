import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomAppBar(
            icon: Icons.search,
            onPressed: () {},
            title: 'Notes',
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
