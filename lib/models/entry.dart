import 'package:hive/hive.dart';

part 'entry.g.dart';

@HiveType(typeId: 0)
class Entry {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String notes;

  @HiveField(2)
  final DateTime createdAt;

  @HiveField(3)
  final String? imagePath;

  Entry({
    required this.title,
    required this.notes,
    required this.createdAt,
    this.imagePath,
  });
}
