import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot.freezed.dart';
part 'bot.g.dart';

@freezed
class Bot with _$Bot {
  const factory Bot({
    int? id,
    required DateTime createdAt,
    String? botName,
    String? botInstruction,
    String? botAvatarUrl,
    String? botTitle,
    String? botDescription,
  }) = _Bot;

  factory Bot.empty() => Bot(
        id: null,
        createdAt: DateTime.now(),
        botName: null,
        botInstruction: null,
        botAvatarUrl: null,
        botTitle: null,
        botDescription: null,
      );

  factory Bot.fromJson(Map<String, dynamic> json) => _$BotFromJson(json);

  // // Business logic: check if the bot is valid based on the botName
  // bool get isValid => botName?.isNotEmpty ?? false;

  // // Business logic: generate summary for the bot
  // String generateSummary() {
  //   return "Bot: ${botTitle ?? 'Untitled'}\n" +
  //          "Description: ${botDescription ?? 'No description available.'}";
  // }

  // // You can also add factory methods, like one to create the bot from a map
  // factory Bot.fromMap(Map<String, dynamic> map) => _$BotFromJson(map);

  // // Method for converting Bot to a Map (e.g., for DB insert)
  // Map<String, dynamic> toMap() => _$BotToJson(this);
}
