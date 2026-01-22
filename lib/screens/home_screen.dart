import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/entry_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entries = ref.watch(entryListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('GeoSnap Journal')),
      body: entries.isEmpty
          ? const Center(
              child: Text('No entries yet', style: TextStyle(fontSize: 18)),
            )
          : ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];
                return ListTile(
                  title: Text(entry.title),
                  subtitle: Text(entry.notes),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
