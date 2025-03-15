import 'package:equatable/equatable.dart';

class Bot extends Equatable {
  const Bot(
    this.botName,
    this.botDescription,
    this.botInstruction,
    this.isNsfw,
  );

  final String botName;
  final String botDescription;
  final String botInstruction;
  final bool isNsfw;

  @override
  List<Object?> get props => [
        botName,
        botDescription,
        botInstruction,
        isNsfw,
      ];

  factory Bot.fromJson(Map<String, dynamic> json) {
    return Bot(
      json['bot_name'],
      json['bot_description'],
      json['bot_instruction'],
      json['is_nsfw'],
    );
  }
}
