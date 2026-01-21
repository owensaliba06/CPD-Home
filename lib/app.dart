import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_entry_screen.dart';

class GeoSnapApp extends StatelessWidget {
  const GeoSnapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CPD Home',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/add': (context) => const AddEntryScreen(),
      },
    );
  }
}
