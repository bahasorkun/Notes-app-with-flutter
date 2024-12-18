import 'package:isar/isar.dart';
import 'package:notes_app/models/note.dart';
import 'package:path_provider/path_provider.dart';

class NoteDatabase {
  static late Isar isar;
  // I N I T I A L I Z E - D A T A B A S E
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [NoteSchema],
      directory: dir.path,
    );
  }

  // list of notes
  final List<Note> currentNotes = [];

  // C R E A T E - a note and save to db
  Future<void> addNote(String text) async {
    final newNote = Note()..text =text;
  }

  // R E A D - notes from db

  // U P D A T E - a note in db

  // D E L E T E - a note from the db
}
