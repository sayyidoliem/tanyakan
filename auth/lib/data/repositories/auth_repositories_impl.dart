import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:auth/domain/repositories/auth_repositories.dart';

part 'auth_repositories_impl.g.dart';

@riverpod
AuthRepositoriesImpl authRepositories(_) => AuthRepositoriesImpl();

class AuthRepositoriesImpl implements AuthRepositories {
  final _client = Supabase.instance.client;

  @override
  Future<AuthResponse> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    return _client.auth.signUp(
      email: email,
      password: password,
      data: {'username': username},
    );
  }

  @override
  Future<AuthResponse> verifyCode({
    required String email,
    required String code,
  }) async {
    return _client.auth.verifyOTP(
      email: email,
      token: code,
      type: OtpType.signup,
    );
  }

  @override
  Stream<AuthState> get authState => _client.auth.onAuthStateChange;

  @override
  Future<AuthResponse> logIn({
    required String email,
    required String password,
  }) {
    return _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> logOut() => _client.auth.signOut();
}
