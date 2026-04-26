import 'package:isar_community/isar.dart';
import '../../models/user.dart';

class UserRepository {
  final Isar isar;

  UserRepository(this.isar);

  Future<User> createGuestUser(String username) async {
    final user = User()
      ..name = username
      ..createdAt = DateTime.now()
      ..lastFocusAt = DateTime.now();

    await isar.writeTxn(() async {
      await isar.users.put(user);
    });
    return user;
  }
}