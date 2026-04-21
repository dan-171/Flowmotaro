import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../models/user.dart';
import '../../models/focus_session.dart';

class IsarServices {
  static late Isar _isar;

  static Future<void> init() async {
    final dir = await getApplicationSupportDirectory();

    _isar = await Isar.open(
      [
        UserSchema,
        FocusSessionSchema,
      ],
      directory: dir.path,
    );
  }

  static Isar get instance => _isar;
}