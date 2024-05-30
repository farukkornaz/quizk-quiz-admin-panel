import 'package:get/get.dart';
import 'package:quick_quiz_admin_panel/controller/online_quiz_controller.dart';
import 'package:quick_quiz_admin_panel/controller/online_screen_controller.dart';

class Initialbindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OnlineQuizController());
    Get.lazyPut(() => OnlineController());
  }

}