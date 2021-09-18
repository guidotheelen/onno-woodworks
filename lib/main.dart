import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onno_woodworks/explanation_frame.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onno Woodworks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SvgPicture.asset(
                'assets/images/ONNO.svg',
                semanticsLabel: 'ONNO Logo',
                color: Colors.black87,
              ),
            ),
          ),
          ListView(
            children: [
              Container(
                height: _screenHeight,
              ),
              ExplanationFrame(
                  screenHeight: _screenHeight, screenWidth: _screenWidth)
            ],
          ),
        ],
      ),
    );
  }
}
