import 'package:flutter/material.dart';
import 'package:screen_nav/screen_3.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  /////
  const MyHomePage2({
    Key? key,
  }) : super(key: key); /////

  @override
  State<MyHomePage2> createState() => _MyHomePageState2(); ////
}

class _MyHomePageState2 extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                ///////
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage3() ///////
                          ));
                },
                child: Text(
                  'Screen 2',
                  style: Theme.of(context).textTheme.headline4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
