import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quick_quiz_admin_panel/controller/online_quiz_controller.dart';
import 'package:quick_quiz_admin_panel/screens/online_control_screen/online_control_screen.dart';

import 'initialBindings.dart';
import 'models/question.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyDFXJd0_6ydGExtOzlH6lBZWEjfbRXocT4',
    appId: '1:573131445611:android:ad29f870a981780d4fa82e',
    messagingSenderId: '573131445611',
    projectId: 'quiz-test-app-1fd6c',
  ));



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Initialbindings(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  OnlineQuizController onlineQuizController = Get.find<OnlineQuizController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: () async {
                  onlineQuizController.startQuiz();
                  await onlineQuizController.prepareQuestions();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnlineControlScreen()));
                },
                child: Container(
                  child: Text("Sınavı Başlat"),
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
