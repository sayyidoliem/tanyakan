// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bot _$BotFromJson(Map<String, dynamic> json) {
  return _Bot.fromJson(json);
}

/// @nodoc
mixin _$Bot {
  int? get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get botName => throw _privateConstructorUsedError;
  String? get botInstruction => throw _privateConstructorUsedError;
  String? get botAvatarUrl => throw _privateConstructorUsedError;
  String? get botTitle => throw _privateConstructorUsedError;
  String? get botDescription => throw _privateConstructorUsedError;

  /// Serializes this Bot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotCopyWith<Bot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotCopyWith<$Res> {
  factory $BotCopyWith(Bot value, $Res Function(Bot) then) =
      _$BotCopyWithImpl<$Res, Bot>;
  @useResult
  $Res call(
      {int? id,
      DateTime createdAt,
      String? botName,
      String? botInstruction,
      String? botAvatarUrl,
      String? botTitle,
      String? botDescription});
}

/// @nodoc
class _$BotCopyWithImpl<$Res, $Val extends Bot> implements $BotCopyWith<$Res> {
  _$BotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? botName = freezed,
    Object? botInstruction = freezed,
    Object? botAvatarUrl = freezed,
    Object? botTitle = freezed,
    Object? botDescription = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      botName: freezed == botName
          ? _value.botName
          : botName // ignore: cast_nullable_to_non_nullable
              as String?,
      botInstruction: freezed == botInstruction
          ? _value.botInstruction
          : botInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      botAvatarUrl: freezed == botAvatarUrl
          ? _value.botAvatarUrl
          : botAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      botTitle: freezed == botTitle
          ? _value.botTitle
          : botTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      botDescription: freezed == botDescription
          ? _value.botDescription
          : botDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotImplCopyWith<$Res> implements $BotCopyWith<$Res> {
  factory _$$BotImplCopyWith(_$BotImpl value, $Res Function(_$BotImpl) then) =
      __$$BotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime createdAt,
      String? botName,
      String? botInstruction,
      String? botAvatarUrl,
      String? botTitle,
      String? botDescription});
}

/// @nodoc
class __$$BotImplCopyWithImpl<$Res> extends _$BotCopyWithImpl<$Res, _$BotImpl>
    implements _$$BotImplCopyWith<$Res> {
  __$$BotImplCopyWithImpl(_$BotImpl _value, $Res Function(_$BotImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = null,
    Object? botName = freezed,
    Object? botInstruction = freezed,
    Object? botAvatarUrl = freezed,
    Object? botTitle = freezed,
    Object? botDescription = freezed,
  }) {
    return _then(_$BotImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      botName: freezed == botName
          ? _value.botName
          : botName // ignore: cast_nullable_to_non_nullable
              as String?,
      botInstruction: freezed == botInstruction
          ? _value.botInstruction
          : botInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      botAvatarUrl: freezed == botAvatarUrl
          ? _value.botAvatarUrl
          : botAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      botTitle: freezed == botTitle
          ? _value.botTitle
          : botTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      botDescription: freezed == botDescription
          ? _value.botDescription
          : botDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotImpl implements _Bot {
  const _$BotImpl(
      {this.id,
      required this.createdAt,
      this.botName,
      this.botInstruction,
      this.botAvatarUrl,
      this.botTitle,
      this.botDescription});

  factory _$BotImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime createdAt;
  @override
  final String? botName;
  @override
  final String? botInstruction;
  @override
  final String? botAvatarUrl;
  @override
  final String? botTitle;
  @override
  final String? botDescription;

  @override
  String toString() {
    return 'Bot(id: $id, createdAt: $createdAt, botName: $botName, botInstruction: $botInstruction, botAvatarUrl: $botAvatarUrl, botTitle: $botTitle, botDescription: $botDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.botName, botName) || other.botName == botName) &&
            (identical(other.botInstruction, botInstruction) ||
                other.botInstruction == botInstruction) &&
            (identical(other.botAvatarUrl, botAvatarUrl) ||
                other.botAvatarUrl == botAvatarUrl) &&
            (identical(other.botTitle, botTitle) ||
                other.botTitle == botTitle) &&
            (identical(other.botDescription, botDescription) ||
                other.botDescription == botDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, botName,
      botInstruction, botAvatarUrl, botTitle, botDescription);

  /// Create a copy of Bot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotImplCopyWith<_$BotImpl> get copyWith =>
      __$$BotImplCopyWithImpl<_$BotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotImplToJson(
      this,
    );
  }
}

abstract class _Bot implements Bot {
  const factory _Bot(
      {final int? id,
      required final DateTime createdAt,
      final String? botName,
      final String? botInstruction,
      final String? botAvatarUrl,
      final String? botTitle,
      final String? botDescription}) = _$BotImpl;

  factory _Bot.fromJson(Map<String, dynamic> json) = _$BotImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime get createdAt;
  @override
  String? get botName;
  @override
  String? get botInstruction;
  @override
  String? get botAvatarUrl;
  @override
  String? get botTitle;
  @override
  String? get botDescription;

  /// Create a copy of Bot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotImplCopyWith<_$BotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
