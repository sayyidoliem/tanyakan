import '../../data/repositories/auth_repositories_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_user_controller.g.dart';

@riverpod
Stream<User?> authUser(AuthUserRef ref) async* {
  final authStream = ref.read(authRepositoriesProvider).authState;

  await for (final authState in authStream) {
    yield authState.session?.user;
  }
}
