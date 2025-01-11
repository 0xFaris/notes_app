import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfeild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            'Add Note',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: 'Title',
            maxLines: 1,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
          CupertinoButton.tinted(
            onPressed: () {},
            child: const Text('Add Note'),
          )
        ],
      ),
    );
  }
}
