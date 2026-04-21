import 'package:flowmotaro/src/models/hat.dart';
import 'package:isar_community/isar.dart';
import 'user.dart';

part 'user_hat.g.dart';

@Collection()
class UserHat{
  Id id = Isar.autoIncrement;

  final user = IsarLink<User>();
  final hat = IsarLink<Hat>();
  bool isSynced = false;
}