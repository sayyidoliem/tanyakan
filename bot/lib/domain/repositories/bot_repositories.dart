import 'dart:io';

import 'package:bot/domain/entities/bot.dart';

abstract class BotRepositories {
  Future<List<Bot>> get getAllBot;

  Future<void> addBot({
    required String name,
    required String description,
    required String instruction,
    required File? image,
    required bool isNsfw,
  });
}
