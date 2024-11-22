import 'package:flutter/material.dart';
import 'package:notesapp/constans/colors.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.onPressed,
    this.onChanged,
    this.controller,
    this.maxLines = 1, this.onSaved,
  });

  final String hintText;
  final TextEditingController? controller;
  final int maxLines;
  final void Function()? onPressed;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextFormField(
            onSaved: onSaved,
            validator: (value) {
              if(value?.isEmpty ?? true){
                return 'Field is required';
              } else {
                return null;
              }
            },
            maxLines: maxLines,
            cursorColor: kprimarycolor,
            controller: controller,
            onChanged: onChanged,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: kprimarycolor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: kprimarycolor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
