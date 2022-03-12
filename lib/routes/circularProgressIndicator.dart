import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularProgressIndicatorImplementation extends StatefulWidget {
  const CircularProgressIndicatorImplementation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CircularProgressIndicatorImplementationState();
  }
}

class _CircularProgressIndicatorImplementationState
    extends State<CircularProgressIndicatorImplementation>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("A determinate circular progresss indicator"),

            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: controller.value,
                semanticsLabel: 'Linear progress indicator',
                backgroundColor: Colors.blueGrey,
                strokeWidth: 16,
              ),
            ),

            Text("An indeterminate circular progresss indicator"),

            const SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: null,
                semanticsLabel: 'Linear progress indicator',
                color: Colors.purple,
                strokeWidth: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircularProgressIndicatorDescription extends StatelessWidget {
  const CircularProgressIndicatorDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "CircularProgressIndicator is used to display a loading indicator. It's value lies from 0 to 1 which decides the progress of the indicator, or it may be null which makes it an indeterminate progress indicator.",
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
