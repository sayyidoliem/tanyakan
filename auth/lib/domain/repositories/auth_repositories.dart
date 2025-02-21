
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepositories {
  Future<AuthResponse> signUp({
    required String email,
    required String password,
    required String username,
  });

  Future<AuthResponse> verifyCode({
    required String email,
    required String code,
  });

  Stream<AuthState> get authState;

  Future<AuthResponse> logIn({
    required String email,
    required String password,
  });

  Future<void> logOut();
}
