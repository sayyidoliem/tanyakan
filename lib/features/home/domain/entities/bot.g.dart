// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotImpl _$$BotImplFromJson(Map<String, dynamic> json) => _$BotImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      botName: json['botName'] as String?,
      botInstruction: json['botInstruction'] as String?,
      botAvatarUrl: json['botAvatarUrl'] as String?,
      botTitle: json['botTitle'] as String?,
      botDescription: json['botDescription'] as String?,
    );

Map<String, dynamic> _$$BotImplToJson(_$BotImpl instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'botName': instance.botName,
      'botInstruction': instance.botInstruction,
      'botAvatarUrl': instance.botAvatarUrl,
      'botTitle': instance.botTitle,
      'botDescription': instance.botDescription,
    };
