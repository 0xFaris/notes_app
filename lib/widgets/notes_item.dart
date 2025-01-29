import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.notes});
  final NotesModel notes;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(
            notes: notes,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 30, bottom: 30, left: 10),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  notes.description,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 100),
                    fontSize: 25,
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 16.0, left: 20),
                child: IconButton(
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<NotesCubit>(context).fetchData();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 44,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 22.0,
              ),
              child: Text(
                notes.date,
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 100),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
