import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/entry.dart';

class EntryListNotifier extends StateNotifier<List<Entry>> {
  EntryListNotifier() : super([]);

  void addEntry(Entry entry) {
    state = [...state, entry];
  }
}

final entryListProvider = StateNotifierProvider<EntryListNotifier, List<Entry>>(
  (ref) => EntryListNotifier(),
);
