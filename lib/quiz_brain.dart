import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Askar oru ooka', true),
    Question('Arshath anna rmba nallavar', true),
    Question('Askar oru kena koo...', true),
    Question('Askar nalla payan', false),
    Question('Askar aalu peru am__ka', true),
    Question('Askar oru kotti', true),
    Question('Arshath anna kettavar la', false),
    Question('tukli oru kotti', true),
    Question('Arshath anna ku tukli rmba pidikum', false),
    Question('tukli ku ashvi ah rmba pidikum', false),
    Question('Ani ah tukli ku pidikathu', false),
    Question('Anupa oru kotti', false),
    Question('anupa rmba nalla pulla', false),
    Question('ishan rmba chettai', true),
    Question('Ashvi ah tukliku rmba pidikum', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
