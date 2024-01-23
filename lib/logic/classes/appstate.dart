import 'package:flutter/material.dart';
import 'package:huskies_app/logic/classes/leage_classes/season.dart';
import 'package:huskies_app/logic/classes/user_vm/user.dart';
import 'package:huskies_app/logic/globals.dart';
import 'package:json_annotation/json_annotation.dart';
part 'appstate.g.dart';

@JsonSerializable()
class AppState {
  final Season? _currentSeason;
  final int _currentViewIndex;
  final List<Map> _shopItems;
  final List<Season>? _seasons;
  final UserVM? _user;
  final List<Widget> _views;
  AppState({
    Season? currentSeason,
    int? currentView,
    products,
    List<Season>? season,
    UserVM? user,
    List<Widget>? views,
  })  : _currentSeason = currentSeason,
        _currentViewIndex = currentView ?? 0,
        _seasons = season,
        _shopItems = products ?? productsList,
        _views = views ?? [],
        _user = user;

  Season? get currentseason => _currentSeason;
  int get currentView => _currentViewIndex;
  List<Map> get products => _shopItems;
  List<Season>? get season => _seasons;
  List<Widget> get view => _views;
  UserVM? get user => _user;

  AppState copyWith({
    int? currentViewIndex,
    Season? choisenSeason,
    UserVM? newUSer,
    // List<Widget>?viewsList,
  }) =>
      AppState(
        views: view,
        currentView: currentViewIndex ?? currentView,
        currentSeason: choisenSeason ?? currentseason,
        user: newUSer ?? user,
      );

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}
