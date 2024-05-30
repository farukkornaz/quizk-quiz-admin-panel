import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/question.dart';
import '../models/quiz.dart';

class OnlineDbService {
  var db = FirebaseFirestore.instance;

  Future<void> startOnlineQuiz()async {
    db.collection('online_tests').doc("online_test").update({
      "start": true
    });

  }

  Future<List<Question>> getOnlineQData() async {
    var snapshot = await db
        .collection('online_tests')
        .doc("online_test")
        .collection("questions")
        .get();
    var allData = snapshot.docs.map((doc) => doc.data()).toList();

    //List<Question> onlineQuestions = allData.map((e) => Question.fromJson(e)).toList();
    allData.map((e) => print(e));
    List<Question> onlineQuestions =
    allData.map((e) => Question.fromJson(e)).toList();
    return onlineQuestions;
  }

  Future<void> nextQuestion() async {
    db
        .collection("online_tests")
        .doc("online_test")
        .collection("attendants")
        .get()
        .then((value) {
          value.docs.forEach((doc){
            doc.reference.update({
              "next": true
            });
          });
    });
  }

  Future<void> previousQuestion() async {
    db
        .collection("online_tests")
        .doc("online_test")
        .collection("attendants")
        .get()
        .then((value) {
      value.docs.forEach((doc){
        doc.reference.update({
          "previous": true
        });
      });
    });
  }


}
