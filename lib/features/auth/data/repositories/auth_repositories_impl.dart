import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tanyakan/features/auth/domain/repositories/auth_repositories.dart';

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
      type: OtpType.email,
    );
  }

  @override
  Stream<AuthState> get authState => _client.auth.onAuthStateChange;

  @override
  Future<void> logOut() => _client.auth.signOut();
}
