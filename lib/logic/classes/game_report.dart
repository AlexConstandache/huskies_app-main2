class GameReport {
  final Map report;
  const GameReport(this.report);

  GameReport writeNewAction(int minute, String action) => GameReport({minute: action});
}
