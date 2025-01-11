import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hintText,
    required this.maxLines,
    super.key,
  });
  String? hintText;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
          ),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
        maxLines: maxLines,
      ),
    );
  }
}
