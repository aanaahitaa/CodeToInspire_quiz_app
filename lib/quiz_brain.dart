import 'package:quiz/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsList = [
    Question(question: 'You can lead a cow down stairs but not up stairs.', answer: false),
    Question(question: 'Approximately one quarter of human bones are in the feet.', answer: true),
    Question(question: 'A slug\'s blood is green.', answer: true),
    Question(question: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', answer: true),
    Question(question: 'It is illegal to pee in the Ocean in Portugal.', answer: true),
    Question(question: 'No piece of square dry paper can be folded in half more than 7 times.', answer: false),
    Question(question: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', answer: true),
    Question(question: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', answer: false),
    Question(question: 'The total surface area of two human lungs is approximately 70 square metres.', answer: true),
    Question(question: 'Google was originally called \"Backrub\".', answer: true),
    Question(question: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', answer: true),
    Question(question: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', answer: true),
  ];

  // Step 3 Part A - Create a method called isFinished()
  bool isFinished() {
    if (_questionNumber >= _questionsList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  // Step 3 Part B - Use a print statement to check that isFinished is working
  void nextQuestion() {
    if (_questionNumber < _questionsList.length - 1) {
      _questionNumber++;
    }
  }

  // Step 4 Part B - Create a reset() method to reset the quiz
  void reset() {
    _questionNumber = 0;
  }

  String getQuestionText() {
    return _questionsList[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionsList[_questionNumber].answer;
  }
}
