import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.text,
      required this.color,
      this.onTap,
      this.isLoading = false});
  final String text;
  final Color color;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 24,
                  width: 24,
                  child: const CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
