import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:core/common/failure.dart';
import 'package:bot/data/datasources/gemini_remote_datasource.dart';
import 'package:bot/domain/repositories/gemini_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gemini_repository_impl.g.dart';

class GeminiRepositoryImpl implements GeminiRepositories {
  final GeminiRemoteDatasource remoteDatasource;
  final _client = Supabase.instance.client;

  GeminiRepositoryImpl(this.remoteDatasource, _client);
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

  @override
  Future<List<Map<String, dynamic>>> getAllBot() => _client
      .from('tbl_bot')
      .select('ads')
      .order('created_at');
}

@riverpod
GeminiRepositories geminiRepositories(ref) {
  return GeminiRepositoryImpl(ref.watch(geminiRemoteDatasourceProvider),ref);
}
