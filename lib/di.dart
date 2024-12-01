import 'package:dio/dio.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
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
    safetySettings: [
      SafetySetting(HarmCategory.dangerousContent, HarmBlockThreshold.medium),
      SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.high),
    ],
    systemInstruction: Content.system('You are a friends. Your name is Neko.'),
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

@riverpod
Supabase provideSupabaseClient(ref) {
  return Supabase.instance;
}
