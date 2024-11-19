import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/cubit/notes_cubit.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAlNotes();
    super.initState();
  }

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
