import 'package:isar_community/isar.dart';

part 'user.g.dart';

@Collection()
class User{
  Id id = Isar.autoIncrement;

  String? uuId;
  String name = '';
  DateTime createdAt = DateTime.now();
  int taroCount = 0;
  int streakCount = 0;
  int highestStreak = 0;
  bool focusActive = false;
  bool breakActive = false;
  int weekFocusDuration = 0;
  DateTime lastFocusAt = DateTime.now();
  bool isSynced = false;
}