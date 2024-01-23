// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appstate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) => AppState(
      currentView: json['currentView'] as int?,
      products: json['products'],
      season: (json['season'] as List<dynamic>?)
          ?.map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : UserVM.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'currentView': instance.currentView,
      'products': instance.products,
      'season': instance.season,
      'user': instance.user,
    };
