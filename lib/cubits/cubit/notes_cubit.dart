import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constans/colors.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  
  List<NoteModel>? notes;
  fetchAlNotes() async {
    var notesbox = Hive.box<NoteModel>(kNotesBox);

    notes = notesbox.values.toList();
    emit(NotesSuccess());
  }
}
