import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex Demo - CodeFresher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Demo - CodeFresher'),
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/LapTrinhFlutter.png',
                      width: 200,
                      height: 500,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Lap Trinh Flutter',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Thuc chien app mobile 2022',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Lap Trinh Anroid',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Java + Kotlin',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/LapTrinhAndroid.png',
                      width: 200,
                      height: 500,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/LapTrinhJava.png',
                      width: 200,
                      height: 500,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Lap Trinh Java co ban',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Cho nguoi moi bat dau',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
