class Question {
  final String question;
  final List<String> ansers;

  const Question(this.question, this.ansers);
  List<String> getShuffledAnsers() {
    List<String> shuffledAnsers = List.of(ansers);
    shuffledAnsers.shuffle();
    return shuffledAnsers;
  }
}
