import 'package:core/common/bot_instruction.dart';
import 'package:core/common/bot_model.dart';
import 'package:core/utils/env.dart';
import 'package:dio/dio.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'di.g.dart';

@Riverpod(keepAlive: false)
GenerativeModel provideGenerativeModel(ref) {
  final key = Env.geminiKey;

  if (key.isEmpty) {
    throw Exception('GEMINI_API_KEY not found');
  }
  return GenerativeModel(
    model: BotModel().geminiFlashV15,
    apiKey: Env.geminiKey,
    generationConfig: GenerationConfig(
      temperature: 1,
      topK: 40,
      topP: 0.95,
      maxOutputTokens: 8192,
      responseMimeType: 'text/plain',
    ),
    safetySettings: [
      SafetySetting(
          HarmCategory.dangerousContent, HarmBlockThreshold.unspecified),
      SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.high),
      SafetySetting(HarmCategory.sexuallyExplicit, HarmBlockThreshold.high),
      SafetySetting(HarmCategory.harassment, HarmBlockThreshold.high),
    ],
    systemInstruction: Content.system(BotInstruction().tanyakanBot),
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

@riverpod
Box provideHive(ref) {
  return Hive.box('settings');
}
