import 'package:flutter/material.dart';
import 'package:notesapp/widgets/color_item.dart';

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffff6392),
    Color(0xffffe45e),
    Color(0xfff9f9f9),
    Color(0xff7fc8f8),
    Color(0xff19647e),
    Color(0xff464d77),
    Color(0xff417b5a),
    Color(0xff7180b9),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
