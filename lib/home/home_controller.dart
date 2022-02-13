import './home_state.dart';
import '../core/core.dart';
import '../shared/models/user_model.dart';
import '../shared/models/quiz_model.dart';
import '../shared/models/question_model.dart';
import '../shared/models/answer_model.dart';

class HomeController {
  HomeState state = HomeState.empty;
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: 'r0cc4t0',
      photoUrl: 'https://avatars.githubusercontent.com/u/60143866?v=4',
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: 'NLW 5 - Trilha Flutter',
        image: AppImages.blocks,
        level: Level.facil,
        questionAnswered: 1,
        questions: [
          QuestionModel(
            title: 'Está curtindo o Flutter?',
            answers: [
              AnswerModel(title: 'Estou curtindo.'),
              AnswerModel(title: 'Não gostei.'),
              AnswerModel(title: 'É muito top!'),
              AnswerModel(title: 'Show de bola!', isRight: true),
            ],
          ),
          QuestionModel(
            title: 'Está curtindo o Flutter?',
            answers: [
              AnswerModel(title: 'Estou curtindo.'),
              AnswerModel(title: 'Não gostei.'),
              AnswerModel(title: 'É muito top!'),
              AnswerModel(title: 'Show de bola!', isRight: true),
            ],
          )
        ],
      ),
      QuizModel(
        title: 'NLW 5 - Trilha React Native',
        image: AppImages.blocks,
        level: Level.facil,
        questionAnswered: 1,
        questions: [
          QuestionModel(
            title: 'Está curtindo o React Native?',
            answers: [
              AnswerModel(title: 'Estou curtindo.'),
              AnswerModel(title: 'Não gostei.'),
              AnswerModel(title: 'É muito top!', isRight: true),
              AnswerModel(title: 'Show de bola!'),
            ],
          )
        ],
      )
    ];
  }
}
