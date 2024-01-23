// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      json['activePlayer'] as bool,
      json['age'] as int,
      Team.fromJson(json['currentTeam'] as Map<String, dynamic>),
      json['goals'] as int,
      json['name'] as String,
      json['playerNumber'] as int,
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'age': instance.age,
      'currentTeam': instance.currentTeam,
      'name': instance.name,
      'playerNumber': instance.playerNumber,
      'activePlayer': instance.activePlayer,
      'goals': instance.goals,
    };
