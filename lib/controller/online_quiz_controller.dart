import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:quick_quiz_admin_panel/services/online_db_service.dart';
import 'package:quick_quiz_admin_panel/models/question.dart' as question;
import '../models/quiz.dart';


class OnlineQuizController extends GetxController{

  Rx<int> currentIndex = 0.obs;
  late List<question.Question> questions;
  OnlineDbService quizDatabase = OnlineDbService();

  Future<void> prepareQuestions() async {
    questions = await quizDatabase.getOnlineQData();
  }

  Future<void> startQuiz() async{
    await quizDatabase.startOnlineQuiz();
  }

  question.Question currentQuestion() {
    return questions[currentIndex.value];
  }

  /*
  * return quiz
  * request quiz from database
  *
  * */

}