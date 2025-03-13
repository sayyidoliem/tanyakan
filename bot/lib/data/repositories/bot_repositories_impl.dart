import 'dart:convert';
import 'dart:io';

import 'package:bot/domain/entities/bot.dart';
import 'package:bot/domain/repositories/bot_repositories.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class BotRepositoriesImpl implements BotRepositories {
  final _client = Supabase.instance.client;

  @override
  Future<void> addBot(
      {required String name,
      required String description,
      required String instruction,
      required File? image,
      required bool isNsfw}) {
    // TODO: implement addBot
    throw UnimplementedError();
  }

  @override
  Future<List<Bot>> get getAllBot => _client
      .from('tbl_bot')
      .select('id, sandasjd')
      .order('created_at')
      .then((value) => value.map((e) => Bot.fromJson(e)).toList());
}
