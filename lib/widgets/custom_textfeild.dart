import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.onChanged,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    super.key,
  });
  final String? hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          }
          return null;
        },
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
