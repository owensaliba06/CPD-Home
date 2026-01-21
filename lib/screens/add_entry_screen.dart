import 'package:flutter/material.dart';

class AddEntryScreen extends StatelessWidget {
  const AddEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Entry')),
      body: const Center(
        child: Text('Entry form will go here', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
