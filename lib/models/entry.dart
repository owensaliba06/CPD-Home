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

  // Kept for later (camera) - can remain unused for now.
  @HiveField(3)
  final String? imagePath;

  @HiveField(4)
  final double? latitude;

  @HiveField(5)
  final double? longitude;

  Entry({
    required this.title,
    required this.notes,
    required this.createdAt,
    this.imagePath,
    this.latitude,
    this.longitude,
  });
}
