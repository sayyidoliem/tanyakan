import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/core.dart';

part 'chat_text_gemini_controller.g.dart';

@riverpod
Future<GenerativeModel> fetchChatGemini(ref) async {
  final chat = await ref.watch(provideGenerativeModelProvider);
  return chat;
}
