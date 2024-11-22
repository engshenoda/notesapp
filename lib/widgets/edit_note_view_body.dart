import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_form_feild.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
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
            title: 'Edit Note',
            icon: Icons.done,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subtitle ?? widget.note.subTitle;
              widget.note.save();

              // if (title != null) {
              //   widget.note.title = title!;
              // }
              BlocProvider.of<NotesCubit>(context).fetchAlNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 32),
          CustomTextFormFeild(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormFeild(
            onChanged: (value) {
              subtitle = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
