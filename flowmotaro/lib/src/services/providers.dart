import 'package:flowmotaro/src/models/user.dart';
import 'package:flowmotaro/src/services/storage_services/users_repository.dart';
import 'package:flowmotaro/src/viewmodels/guest_sign_in_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar_community/isar.dart';

final isarProvider = Provider<Isar>((ref) {
  throw UnimplementedError();
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final isar = ref.watch(isarProvider);
  return UserRepository(isar);
});

final guestSignInViewModelProvider = NotifierProvider<GuestSignInViewModel, AsyncValue<User?>>(
  GuestSignInViewModel.new,
);