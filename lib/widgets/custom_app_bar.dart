import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
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
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 40,
          ),
        )
      ],
    );
  }
}
