import 'package:isar_community/isar.dart';

import 'enum.dart';
import 'user.dart';
part 'focus_session.g.dart';

@Collection()
class FocusSession{
  Id id = Isar.autoIncrement;

  final user = IsarLink<User>();

  late DateTime startAt;
  late DateTime endAt;
  int duration = 0;

  @enumerated
  late SessionType type;
  
  bool isSynced = false;
}