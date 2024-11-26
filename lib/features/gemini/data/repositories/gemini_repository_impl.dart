import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tanyakan/common/failure.dart';
import 'package:tanyakan/features/gemini/data/datasources/gemini_remote_datasource.dart';
import 'package:tanyakan/features/gemini/domain/repositories/gemini_repository.dart';

part 'gemini_repository_impl.g.dart';

class GeminiRepositoryImpl implements GeminiRepositories {
  final GeminiRemoteDatasource remoteDatasource;

  GeminiRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, GenerateContentResponse>> textGenTextOnlyPrompt(
      String prompt) async {
    try {
      final result = await remoteDatasource.generateContentFromText(prompt);
      print(result.toString());
      return Right(result!);
    } on ServerException {
      print(const ServerFailure(''));
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, GenerateContentResponse>>
      textGenMultimodalMultiImagePrompt(String prompt) {
    // TODO: implement textGenMultimodalMultiImagePrompt
    throw UnimplementedError();
  }
}

@riverpod
GeminiRepositories geminiRepositories(ref) {
  return GeminiRepositoryImpl(ref.watch(geminiRemoteDatasourceProvider));
}
