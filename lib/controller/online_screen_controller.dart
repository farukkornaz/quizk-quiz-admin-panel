import 'package:get/get.dart';
import 'package:quick_quiz_admin_panel/controller/online_quiz_controller.dart';
import 'package:quick_quiz_admin_panel/services/online_db_service.dart';

import '../models/question.dart';

class OnlineController extends GetxController{
  OnlineDbService onlineDb = OnlineDbService();
  OnlineQuizController quizController = Get.find<OnlineQuizController>();


  Future<void> nextQuestion() async {
    quizController.currentIndex.value++;
    await onlineDb.nextQuestion();
  }

  Future<void> previousQuestion() async {
    quizController.currentIndex.value--;
    await onlineDb.previousQuestion();
  }

}