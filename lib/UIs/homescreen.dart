import 'package:flutter/material.dart';
import 'package:road_to_flutter/models/user_model.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  User user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kwik Pass'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Welcome, ${user.username}'),
      ),
    );
  }
}