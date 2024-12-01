import 'package:flutter/material.dart';
import 'package:notesapp/constans/colors.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kcolors.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: ListView.builder(
          itemCount: kcolors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kcolors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kcolors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
