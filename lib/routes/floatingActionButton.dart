import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonImplementation extends StatelessWidget {
  const FloatingActionButtonImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FabCircularMenu(
        fabMargin: const EdgeInsets.all(25),
        ringDiameter: 500.0,
        fabColor: Colors.blueAccent,
        fabElevation: 5,
        ringColor: Colors.blueAccent,
        ringWidth: 100,
        children: const <Widget>[
          Icon(Icons.home),
          Icon(Icons.notifications),
          Icon(Icons.search),
          Icon(Icons.call),
          Icon(Icons.message),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}

class FloatingActionButtonDescription extends StatelessWidget {
  const FloatingActionButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 8.0),
        child: const Text(
          'A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class FloatingActionButtonCode {
  const FloatingActionButtonCode();
  String buildCodeString() {
    return """FloatingActionButton(
                
              ),""";
  }
}
