import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_quiz_admin_panel/controller/online_quiz_controller.dart';
import 'package:quick_quiz_admin_panel/controller/online_screen_controller.dart';
import 'package:quick_quiz_admin_panel/screens/online_control_screen/components/QuestionShiftButtons.dart';
import 'package:quick_quiz_admin_panel/screens/question_screen/question_screen.dart';

class OnlineControlScreen extends StatefulWidget {
  const OnlineControlScreen({super.key});

  @override
  State<OnlineControlScreen> createState() => _OnlineControlScreenState();
}

class _OnlineControlScreenState extends State<OnlineControlScreen> {
  OnlineController onlineController = Get.find<OnlineController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: QuestionScreen(),
              ),
            ),

            //sonraki soru onceki soru buttonları
            Questionshiftbuttons(),
          ],
        ),
      ),
    );
  }
}
