import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'İnsan DNA\'sı %50 oranında salatalık DNA\'sı ile aynıdır.', false),
    Question('Ahtapotların 3 tane kalbi vardır.', true),
    Question(
        'Sihirli bir sözcük olarak lanse edilen '
        'Abrakadabra'
        ', ilk olarak yüksek ateşli hastaların, ateşlerini düşürmek için söylenmiştir',
        true),
    Question('Altın en iyi iletkendir.', false),
    Question(
        'Kanımızın vücudumuzu dolaşmasi yalnızca 22-23 saniye sürüyor.', true),
    Question(
        'Fransa\'da giyotinle en son idam 1977 yılında yapılmıştır.', true),
    Question('Dünyadaki en kısa savaş 2 saat sürmüştür.', false),
    Question(
        'İran ordusu, 2007 yılında 14 sincabı ajan oldukları gerekçesiyle tutukladı.',
        true),
    Question('İran\'ın yüzölçümü Türkiye\'nin yüzölçümünden büyüktür.', true),
    Question('Avrupa\'nın en kalabalık şehri İstanbul\'dur.', true),
    Question('Dinozorlar olmasaydı kuşlar olmazdı.', true),
    Question(
        ' Chicago, Barcelona, Roma ve İstanbul, aynı enlem üzerindedir.', true),
    Question('Aynı anda nefes alman ve yutkunman mümkün değildir.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
