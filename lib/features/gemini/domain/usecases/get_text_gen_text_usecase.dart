import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tanyakan/common/failure.dart';
import 'package:tanyakan/features/gemini/data/repositories/gemini_repository_impl.dart';
import 'package:tanyakan/features/gemini/domain/repositories/gemini_repository.dart';

part 'get_text_gen_text_usecase.g.dart';

class GetTextGenTextUsecase {
  final GeminiRepositories _repositories;

  GetTextGenTextUsecase(this._repositories);

  Future<Either<Failure, GenerateContentResponse>> execute(String prompt) {
    return _repositories.textGenTextOnlyPrompt(prompt);
  }
}

@riverpod
GetTextGenTextUsecase getTextGenTextUsecase(GetTextGenTextUsecaseRef ref) {
  return GetTextGenTextUsecase(ref.watch(geminiRepositoriesProvider));
}
