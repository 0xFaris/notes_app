import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    required this.maxLines,
    super.key,
  });
  final String? hintText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: customOutlineInputBorder(),
          focusedBorder: customOutlineInputBorder(kPrimaryColor),
          hintText: hintText,
          border: customOutlineInputBorder(),
        ),
        maxLines: maxLines,
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide(
        color: color ?? Colors.white,
        width: 2,
      ),
    );
  }
}
