import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_quiz_admin_panel/controller/online_screen_controller.dart';

class Questionshiftbuttons extends StatelessWidget {
  Questionshiftbuttons({super.key});
  OnlineController onlineController = Get.find<OnlineController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(4),
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        onlineController.previousQuestion();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor:
                          Colors.deepOrangeAccent),
                      child: const Row(
                        children: [
                          Icon(
                              color: Colors.black87,
                              Icons.navigate_before),
                          Text(
                              style: TextStyle(
                                  color: Colors.black87),
                              "Onceki Soru")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(4),
              width: 200,
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        onlineController.nextQuestion();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              style: TextStyle(
                                  color: Colors.black87),
                              "Sonraki Soru"),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
