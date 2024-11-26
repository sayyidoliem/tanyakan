import 'package:dio/dio.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tanyakan/helper/env.dart';

part 'di.g.dart';

@Riverpod(keepAlive: false)
GenerativeModel provideGenerativeModel(ref) {
  final key = Env.geminiKey;

  if (key.isEmpty) {
    throw Exception('GEMINI_API_KEY not found');
  }
  return GenerativeModel(
    model: 'gemini-1.5-flash',
    apiKey: key,
    generationConfig: GenerationConfig(
      temperature: 1,
      topK: 40,
      topP: 0.95,
      maxOutputTokens: 8192,
      responseMimeType: 'text/plain',
    ),
  );
}

@riverpod
Dio provideDio(ref) {
  return Dio(
    BaseOptions(
      headers: {'Content-Type': 'application/json'},
    ),
  );
}
