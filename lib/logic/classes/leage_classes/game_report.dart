import 'package:json_annotation/json_annotation.dart';
part 'game_report.g.dart';

@JsonSerializable()
class GameReport {
  final Map report;
  const GameReport(this.report);

  GameReport writeNewAction(int minute, String action) => GameReport({minute: action});
  factory GameReport.fromJson(Map<String, dynamic> json) => _$GameReportFromJson(json);
  Map<String, dynamic> toJson() => _$GameReportToJson(this);
}
