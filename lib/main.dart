import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ask Me Anything'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Row(
            children: const [
              Expanded(
                child: BallWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BallWidget extends StatefulWidget {
  const BallWidget({Key? key}) : super(key: key);

  @override
  _BallWidgetState createState() => _BallWidgetState();
}

class _BallWidgetState extends State<BallWidget> {
  int answerNo = 1;

  void updateAnswer() {
    setState(() {
      answerNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        updateAnswer();
      },
      child: Image.asset('images/ball$answerNo.png'),
    );
  }
}
