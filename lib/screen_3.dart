import 'package:flutter/material.dart';

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
      home: const MyHomePage3(),
    );
  }
}

class MyHomePage3 extends StatefulWidget {
  /////
  const MyHomePage3({Key? key}) : super(key: key); /////

  @override
  State<MyHomePage3> createState() => _MyHomePageState3(); ////
}

class _MyHomePageState3 extends State<MyHomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
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
                          builder: (context) => const MyHomePage() ///////
                          ));
                },
                child: Text(
                  'Screen 3',
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
