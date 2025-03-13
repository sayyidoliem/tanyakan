import 'package:dartz/dartz.dart';
import 'package:core/common/failure.dart';
import 'package:tanyakan/features/home/domain/entities/bot.dart';

abstract class HomeRepositories {
  Future<Either<Failure, List<Bot>>> getAllBot();
  Future<Either<Failure, Bot?>> getBot(String id);
  Future<Either<Failure, void>> addBot(Bot bot);
  Future<Either<Failure, Bot?>> updateBot(Bot bot);
  Future<Either<Failure, void>> deleteBot(String id);
  Future<Either<Failure, void>> deleteAllBot();
}