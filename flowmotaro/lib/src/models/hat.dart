import 'package:isar_community/isar.dart';

part 'hat.g.dart';

@Collection()
class Hat{
  Id id = Isar.autoIncrement;

  late String name;
  late int unlockThreshold;
}