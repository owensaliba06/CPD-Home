import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import '../models/entry.dart';

class EntryListNotifier extends StateNotifier<List<Entry>> {
  final Box<Entry> _box = Hive.box<Entry>('entries');

  EntryListNotifier() : super([]) {
    _loadEntries();
  }

  void _loadEntries() {
    state = _box.values.toList();
  }

  void addEntry(Entry entry) {
    _box.add(entry);
    state = [...state, entry];
  }
}

final entryListProvider = StateNotifierProvider<EntryListNotifier, List<Entry>>(
  (ref) => EntryListNotifier(),
);
