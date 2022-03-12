import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterista/home.dart';
import 'package:flutterista/widget_list.dart';

class SplashScreenFluttadex extends StatefulWidget {
  const SplashScreenFluttadex({Key? key}) : super(key: key);

  @override
  State<SplashScreenFluttadex> createState() => _SplashScreenFluttadexState();
}

class _SplashScreenFluttadexState extends State<SplashScreenFluttadex> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _delay();
  }

  _delay() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, _screenPush);
  }

  _screenPush() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              child: Image.asset("./assets/Images/flutterIcon.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "FluttaDex",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.blueAccent,
              strokeWidth: 3,
            ),
          ],
        ),
      ),
    );
  }
}
