import 'package:flutter/material.dart';

class AnimatedContainerImplementation extends StatefulWidget {
  const AnimatedContainerImplementation({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerImplementation> createState() =>
      _AnimatedContainerImplementationState();
}

class _AnimatedContainerImplementationState
    extends State<AnimatedContainerImplementation> {
  double height = 300;
  double width = 200;
  Color color = Colors.green;

  void onTap() {
    setState(() {
      height = height == 300 ? 200 : 300;
      width = width == 200 ? 300 : 200;
      color = color == Colors.blue ? Colors.green : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 800),
          padding: const EdgeInsets.all(15),
          curve: Curves.easeIn,
          alignment: color == Colors.blue
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 650),
            padding: const EdgeInsets.all(15),
            curve: Curves.easeIn,
            height: height,
            width: width,
            alignment: color == Colors.blue
                ? Alignment.bottomCenter
                : Alignment.topCenter,
            decoration: BoxDecoration(
              color: color,
            ),
            child: const Text(
              'Tap on me!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedContainerDescription extends StatelessWidget {
  const AnimatedContainerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "The AnimatedContainer animates between the old and new values of its properties whenever they change using the provided curve and duration.\n\nIt is an easy way to implement some basic animations in your flutter application to make it look more attractive!",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
