import 'package:flutter/material.dart';
import 'package:notesapp/widgets/color_item.dart';

class ColorListview extends StatelessWidget {
  const ColorListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const ColorItem();
          }),
    );
  }
}