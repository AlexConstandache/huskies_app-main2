// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      json['name'] as String,
      json['position'] as int,
      json['statistic'] as Map<String, dynamic>,
      (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'name': instance.name,
      'position': instance.position,
      'statistic': instance.statistic,
      'players': instance.players,
    };
