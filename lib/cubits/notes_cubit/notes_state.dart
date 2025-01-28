part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class NotesSuccses extends NotesState {
  final List<NotesModel> notes;
  NotesSuccses(this.notes);
}

class NotesFailure extends NotesState {}
