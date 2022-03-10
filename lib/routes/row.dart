import 'package:flutter/material.dart';

final _color = [
  Colors.amber[700],
  Colors.amber[600],
  Colors.amber[500],
  Colors.amber[400],
  Colors.amber[300],
  Colors.amber[200],
  Colors.amber[100]
];

class RowImplementation extends StatelessWidget {
  const RowImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("A horizontal scrollable row widget"),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      color: _color[0],
                      height: 200,
                      width: 100,
                    ),
                    Container(
                      color: _color[1],
                      height: 200,
                      width: 100,
                    ),
                    Container(
                      color: _color[2],
                      height: 200,
                      width: 100,
                    ),
                    Container(
                      color: _color[3],
                      height: 200,
                      width: 100,
                    ),
                    Container(
                      color: _color[4],
                      height: 200,
                      width: 100,
                    ),
                    Container(
                      color: _color[5],
                      height: 200,
                      width: 100,
                    ),
                    Container(
                      color: _color[6],
                      height: 200,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowDescription extends StatelessWidget {
  const RowDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'A convenience widget that displays its children in a horizontal array.',
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class RowCode {
  const RowCode();
  String buildCodeString() {
    return """Row(
      children: [
        <child 1>,
        <child 2>,
        <child n>,
      ],
    ),""";
  }
}
