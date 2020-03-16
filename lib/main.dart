import 'package:flutter/material.dart';
// import 'package:road_to_flutter/UIs/homescreen.dart';
import 'package:road_to_flutter/UIs/authUI/signinscreen.dart';
import 'package:road_to_flutter/UIs/authUI/signupscreen.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // /theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return SignUp();
  }
}