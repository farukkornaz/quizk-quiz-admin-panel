import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quick_quiz_admin_panel/controller/online_quiz_controller.dart';

import 'components/Options.dart';
import 'components/question.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: const ShapeDecoration(
                color: Colors.amberAccent,
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent, width: 5),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.elliptical(30, 30),
                    right: Radius.elliptical(30, 30)
                  ),
                ),
              ),
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              alignment: Alignment.center,
              width: double.infinity,
              child: Question(),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              width: double.infinity,
              child: Options(),
            ),
          ),
        ],
      ),
    );
  }
}
