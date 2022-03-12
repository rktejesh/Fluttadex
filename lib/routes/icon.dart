import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconImplementation extends StatelessWidget {
  const IconImplementation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 36.0,
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 36.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.blue,
                size: 36.0,
              ),
              Icon(
                Icons.access_alarm,
                color: Colors.pinkAccent,
                size: 36.0,
              ),
              Icon(
                Icons.access_time_filled,
                color: Colors.teal,
                size: 36.0,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.accessibility,
                color: Colors.indigo,
                size: 36.0,
              ),
              Icon(
                Icons.accessible,
                color: Colors.green,
                size: 36.0,
              ),
              Icon(
                Icons.accessible_forward,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.account_balance,
                color: Colors.blueGrey,
                size: 36.0,
              ),
              Icon(
                Icons.account_balance_wallet,
                color: Colors.amber,
                size: 36.0,
              ),
              Icon(
                Icons.account_box,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(
                Icons.account_tree,
                color: Colors.black87,
                size: 36.0,
              ),
              Icon(
                Icons.adb,
                color: Colors.green,
                size: 36.0,
              ),
              Icon(
                Icons.add,
                color: Colors.pink,
                size: 36.0,
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class IconDescription extends StatelessWidget {
  const IconDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Flutter allows us to use variety of icons.\n\n To list a few we have: favourite, audiotrack, beach_access, ac_unit, access_alarm, access_time, accessibility, adb, add... and the list goes on and on.',
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
