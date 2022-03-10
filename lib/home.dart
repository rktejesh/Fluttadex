import 'package:flutter/material.dart';
import 'package:flutterista/widget_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FluttaDex'),
        backgroundColor: Colors.lightBlue,
      ),
      body: const ListBuilder(),
    );
  }
}