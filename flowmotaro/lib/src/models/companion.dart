import 'package:isar_community/isar.dart';
import 'user.dart';

part 'companion.g.dart';

@Collection()
class Companion{
  Id id = Isar.autoIncrement;

  final user = IsarLink<User>();

  String name = 'Flowsheep';
  int feedMeter = 0;
  DateTime lastFed = DateTime.now();
  int hatId = 0;
  bool isSynced = false;
}