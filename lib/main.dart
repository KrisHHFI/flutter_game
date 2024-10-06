import 'dart:async';
import 'package:flutter/material.dart';
import 'widgets/background_image.dart';
import 'widgets/increment_button.dart';
import 'widgets/increment_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Cat App'),
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
  int _counter = 0;
  bool _isDefaultImageVisible = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _isDefaultImageVisible = false;
    });

    // After 0.5 seconds, show the default image again
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isDefaultImageVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const BackgroundImage(
              imagePath:
                  'assets/CatSmiling.png'), // Image credit: Pexels, Halil İbrahim ÇETİN, Focus Photography of Gray and Brown Cat (edited)

          // Display default cat image while _isDefaultImageVisible is false
          Visibility(
            visible: _isDefaultImageVisible,
            child: const BackgroundImage(
                imagePath:
                    'assets/Cat.jpg'), // Image credit: Pexels, Halil İbrahim ÇETİN, Focus Photography of Gray and Brown Cat
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              color: Colors.black.withOpacity(0.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IncrementCounter(counter: _counter),
                  IncrementButton(onPressed: _incrementCounter),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
