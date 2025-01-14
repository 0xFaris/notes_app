import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfeild.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const id = 'edit_note_view';
  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody();
  }
}

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.edit,
          ),
          SizedBox(height: 20),
          CustomTextField(hintText: 'Title', maxLines: 1),
          CustomTextField(hintText: 'Description', maxLines: 10),
          CustomButton()
        ],
      ),
    ));
  }
}
