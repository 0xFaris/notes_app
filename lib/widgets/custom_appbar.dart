import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {required this.text, required this.icon, super.key, this.onPressed});
  final String text;
  final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(icon),
            ),
          )
        ],
      ),
    );
  }
}
