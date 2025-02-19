import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'GEMINI_BASE_URL', obfuscate: false, defaultValue: '')
  static String geminiBaseUrl = _Env.geminiBaseUrl;

  @EnviedField(varName: 'GEMINI_API_KEY', obfuscate: true, defaultValue: '')
  static String geminiKey = _Env.geminiKey;

  @EnviedField(varName: 'SUPABASE_BASE_URL', obfuscate: false, defaultValue: '')
  static String supabaseBaseUrl = _Env.supabaseBaseUrl;

  @EnviedField(varName: 'SUPABASE_API_KEY', obfuscate: true, defaultValue: '')
  static String supabaseKey = _Env.supabaseKey;

}