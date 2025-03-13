// import 'package:Tanyakan/common/exception.dart';
// import 'package:Tanyakan/common/failure.dart';
// import 'package:Tanyakan/features/home/data/datasources/home_local_datasource.dart';
// import 'package:Tanyakan/features/home/domain/entities/bot.dart';
// import 'package:Tanyakan/features/home/domain/repositories/home_repositories.dart';
// import 'package:dartz/dartz.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'auth_repositories_impl.g.dart';

// class HomeRepositoriesImpl implements HomeRepositories {
//   final HomeLocalDatasource localDataSource;

//   HomeRepositoriesImpl({required this.localDataSource});

//   @override
//   Future<Either<Failure, void>> addBot(Bot bot) async {
//     try {
//       final result = await localDataSource.addBot(bot.toModel());
//       return Right(result);
//     } on DatabaseException catch (e) {
//       return Left(DatabaseFailure(e.message));
//     }
//   }

//   @override
//   Future<Either<Failure, void>> deleteAllBot() async {
//     try {
//       final result = await localDataSource.deleteAllBot();
//       return Right(result);
//     } on DatabaseException catch (e) {
//       return Left(DatabaseFailure(e.message));
//     }
//   }

//   @override
//   Future<Either<Failure, void>> deleteBot(String id) async {
//     try {
//       final result = await localDataSource.deleteBot(id);
//       return Right(result);
//     } on DatabaseException catch (e) {
//       return Left(DatabaseFailure(e.message));
//     }
//   }

//   @override
//   Future<Either<Failure, List<Bot>>> getAllBot() async {
//     try {
//       final result = await localDataSource.getAllBot();
//       return Right(result);
//     } on DatabaseException catch (e) {
//       return Left(DatabaseFailure(e.message));
//     }
//   }

//   @override
//   Future<Either<Failure, Bot?>> getBot(String id) async {
//     try {
//       final result = await localDataSource.getBot(id);
//       return Right(result);
//     } on DatabaseException catch (e) {
//       return Left(DatabaseFailure(e.message));
//     }
//   }

//   @override
//   Future<Either<Failure, Bot?>> updateBot(Bot bot) async {
//     try {
//       final result = await localDataSource.updateBot(bot.toModel());
//       return Right(result);
//     } on DatabaseException catch (e) {
//       return Left(DatabaseFailure(e.message));
//     }
//   }

//   // try {
//   //   final result = await localDataSource.addPerson(person);
//   //   return Right(result);
//   // } on DatabaseException catch (e) {
//   //   return Left(DatabaseFailure(e.message));
//   // }
// }

// @riverpod
// HomeRepositories homeRepositories(ref) {
//   return HomeRepositoriesImpl(localDataSource: ref.watch());
// }
