import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const CustomTextField(
      {super.key,
      this.onChanged,
      this.controller,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        disabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.withOpacity(.5), fontSize: 14),
        fillColor: const Color(0xffE4DFDF).withOpacity(.1),
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(.2)),
        borderRadius: BorderRadius.circular(15));
  }
}
