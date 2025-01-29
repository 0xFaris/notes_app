import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfeild.dart';
import 'package:notes_app/widgets/edit_note_custom_colors_list.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.notes});
  final NotesModel notes;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.description =
                  description ?? widget.notes.description;

              widget.notes.save();
              BlocProvider.of<NotesCubit>(context).fetchData();
              Navigator.pop(context);
            },
            text: 'Edit Note',
            icon: Icons.edit_attributes,
          ),
          SizedBox(height: 20),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.notes.title,
          ),
          CustomTextField(
            hintText: widget.notes.description,
            maxLines: 10,
            onChanged: (value) {
              description = value;
            },
          ),
          SizedBox(height: 20),
          EditCircleAvatarListView(
            note: widget.notes,
          ),
        ],
      ),
    ));
  }
}
