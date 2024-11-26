import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tanyakan/features/gemini/domain/usecases/get_text_gen_text_usecase.dart';

part 'chat_text_gemini_controller.g.dart';

@riverpod
Future<GenerateContentResponse> fetchChatTextGeminiController(
    FetchChatTextGeminiControllerRef ref, String prompt) async {
  final usecase = ref.watch(getTextGenTextUsecaseProvider);
  final result = await usecase.execute(prompt);
  return result.fold(
    (l) => throw Exception('Failed to fetch Gemini'),
    (r) => r,
  );
}
