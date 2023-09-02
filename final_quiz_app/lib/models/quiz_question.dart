class QuizQuestion {
  const QuizQuestion(this.questionText, this.answers);

  final String questionText;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(
        answers); //creating copy of answers list...as shuffle() will modify/shuffle the original list..as out answer[0] is correct answer for every question
    shuffledList.shuffle();
    return shuffledList;
  }
}
