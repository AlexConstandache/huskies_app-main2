// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
      json['league'] as String,
      (json['matches'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      json['scores'] as Map<String, dynamic>,
      json['season'] as String,
      (json['teams'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'season': instance.season,
      'teams': instance.teams,
      'league': instance.league,
      'scores': instance.scores,
      'matches': instance.matches,
    };
