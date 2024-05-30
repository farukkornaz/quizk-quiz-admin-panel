import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/online_quiz_controller.dart';



class Question extends StatelessWidget {
  OnlineQuizController onlineQuizController = Get.find<OnlineQuizController>();
  @override
  Widget build(BuildContext context) {
    return Container(child: Obx((){
      return Text(onlineQuizController.currentQuestion().question! + onlineQuizController.currentIndex.value.toString());
    }),);
  }
}
