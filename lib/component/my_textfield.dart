import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      this.label,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.controller,
      this.obscureText});

  final String? label;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 12,
      ),
      label != null ? Text(label!) : Container(),
      const SizedBox(
        height: 8,
      ),
      TextField(
        obscureText: obscureText ?? false,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: Colors.white70, width: 0.5)),
            filled: true,
            fillColor: Colors.white.withOpacity(0.1)),
      )
    ]);
  }
}
