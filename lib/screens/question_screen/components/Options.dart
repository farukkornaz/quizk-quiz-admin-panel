import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_quiz_admin_panel/controller/online_quiz_controller.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {


  OnlineQuizController onlineQuizController = Get.find<OnlineQuizController>();


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var options = onlineQuizController.questions[onlineQuizController.currentIndex.value].options;
      return ListView.builder(
        itemCount: options?.length,
        itemBuilder: (BuildContext context, int index) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 75,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black12,
              ),
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(options![index]),
            ),
          ],
        );
      },
      );
    },);
  }
}
