import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String hint;
  const SearchTextField({super.key, this.onChanged, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildOutlineborder(),
        enabledBorder: buildOutlineborder(),
        focusedBorder: buildOutlineborder(),
        errorBorder: buildOutlineborder(),
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xff8F9BBA)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: const Icon(Icons.search,color: Color(0xff4318FF),),
      ),
      onChanged: onChanged,
    );
  }

  buildOutlineborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(35),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
  }
