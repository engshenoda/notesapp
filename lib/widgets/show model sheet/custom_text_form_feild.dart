import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.icon,
    this.onPressed,
    required this.obscureText,
    this.prefixIcon,
    this.onChanged,
    this.controller,
  });

  final String hintText;
  final TextEditingController? controller;
  final IconData? icon;
  final Icon? prefixIcon;

  final void Function()? onPressed;
  final Function(String)? onChanged;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field is required';
                }
                return null;
              },
              onChanged: onChanged,
              style: const TextStyle(fontSize: 20, color: Colors.grey),
              obscureText: obscureText,
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                prefixIconColor: Colors.black,
                iconColor: Colors.black,
                suffixIcon: icon != null
                    ? IconButton(
                        onPressed: onPressed,
                        icon: Icon(icon),
                        color: Colors.black,
                      )
                    : null,
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
