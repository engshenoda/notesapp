import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 40,
          ),
        )
      ],
    );
  }
}
