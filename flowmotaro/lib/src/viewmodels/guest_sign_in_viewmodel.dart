import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/providers.dart';
import '../services/storage_services/users_repository.dart';
import '../models/user.dart';

class GuestSignInViewModel extends Notifier<AsyncValue<User?>> {
  late UserRepository _repo;

  @override
  AsyncValue<User?> build() {
    _repo = ref.read(userRepositoryProvider);
    return const AsyncValue.data(null);
  }

  Future<void> continueAsGuest(String username) async {
    state = const AsyncValue.loading();
    try {
      final user = await _repo.createGuestUser(username);
      state = AsyncValue.data(user);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}