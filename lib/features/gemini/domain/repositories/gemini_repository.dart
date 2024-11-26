import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:tanyakan/common/failure.dart';

abstract class GeminiRepositories {
  Future<Either<Failure, GenerateContentResponse>> textGenTextOnlyPrompt(
      String prompt);
  Future<Either<Failure, GenerateContentResponse>>
      textGenMultimodalMultiImagePrompt(String prompt);
}
