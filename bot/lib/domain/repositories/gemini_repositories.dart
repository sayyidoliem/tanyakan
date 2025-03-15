import 'package:core/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

abstract class GeminiRepositories {
  Future<Either<Failure, GenerateContentResponse>> textGenTextOnlyPrompt(
    String prompt,
  );

  Future<Either<Failure, GenerateContentResponse>>
      textGenMultimodalMultiImagePrompt(
    String prompt,
  );
}
