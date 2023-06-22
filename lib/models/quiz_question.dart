class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getshuffleanswer() {
    final shuffleanswer = List.of(answer);
    shuffleanswer.shuffle();
    return shuffleanswer;
  }
}
