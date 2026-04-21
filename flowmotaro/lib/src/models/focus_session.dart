import 'package:isar_community/isar.dart';

import 'user.dart';
part 'focus_session.g.dart';

@Collection()
class FocusSession{
  Id id = Isar.autoIncrement;

  final user = IsarLink<User>();

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