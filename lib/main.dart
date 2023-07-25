import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/// MyAppClass
class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),);
  }
}
/// MyHomePageClass
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bgColor = Colors.white;
  final colorOne = 255;
  final colorTwo = 256;

  Color generateColors() {
    final random = Random();
    final colorA = random.nextInt(colorOne);
    final colorR = random.nextInt(colorTwo);
    final colorG = random.nextInt(colorTwo);
    final colorB = random.nextInt(colorTwo);
    final finalColor = Color.fromARGB(colorA,colorR,colorG,colorB);

    return finalColor;
  }

  Color changeBackgroundColor() {
    setState(() {
      bgColor = generateColors();
    });

    return bgColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeBackgroundColor,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Solid Software Task'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello There'),
        ),
      ),
    );
  }
}
