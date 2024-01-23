// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PastMatch _$PastMatchFromJson(Map<String, dynamic> json) => PastMatch(
      json['endScore'] as String,
      (json['gamereports'] as List<dynamic>)
          .map((e) => GameReport.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['goals'] as Map<String, dynamic>,
      Team.fromJson(json['home'] as Map<String, dynamic>),
      Team.fromJson(json['visitor'] as Map<String, dynamic>),
      Team.fromJson(json['winner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PastMatchToJson(PastMatch instance) => <String, dynamic>{
      'endScore': instance.endScore,
      'gamereports': instance.gamereports,
      'goals': instance.goals,
      'home': instance.home,
      'visitor': instance.visitor,
      'winner': instance.winner,
    };

NextMatch _$NextMatchFromJson(Map<String, dynamic> json) => NextMatch(
      json['endScore'] as String?,
      (json['gamereports'] as List<dynamic>?)
          ?.map((e) => GameReport.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['goals'] as Map<String, dynamic>?,
      Team.fromJson(json['home'] as Map<String, dynamic>),
      Team.fromJson(json['visitor'] as Map<String, dynamic>),
      json['winner'] == null
          ? null
          : Team.fromJson(json['winner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NextMatchToJson(NextMatch instance) => <String, dynamic>{
      'endScore': instance.endScore,
      'gamereports': instance.gamereports,
      'goals': instance.goals,
      'home': instance.home,
      'visitor': instance.visitor,
      'winner': instance.winner,
    };
