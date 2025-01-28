import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchData() async {
    try {
      var notesbox = Hive.box<NotesModel>(kNotesBoxKey);
      List<NotesModel> notes = notesbox.values.toList();
      emit(NotesSuccses(notes));
    } catch (e) {
      emit(NotesFailure());
    }
  }
}
