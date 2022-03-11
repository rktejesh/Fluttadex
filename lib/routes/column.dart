import 'package:flutter/material.dart';

class ColumnImplementation extends StatelessWidget {
  const ColumnImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("A vertical scrollable Column widget"),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.8),
                            Colors.blue.withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text("Hello I am Text 1"),
                      ),
                      height: 75,
                      width: 450,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.8),
                            Colors.blue.withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text("Hello I am Text 2"),
                      ),
                      height: 75,
                      width: 450,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.8),
                            Colors.blue.withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text("Hello I am Text 3"),
                      ),
                      height: 75,
                      width: 450,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.8),
                            Colors.blue.withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text("Hello I am Text 4"),
                      ),
                      height: 75,
                      width: 450,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.8),
                            Colors.blue.withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text("Hello I am Text 5"),
                      ),
                      height: 75,
                      width: 450,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.8),
                            Colors.blue.withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text("Hello I am Text 6"),
                      ),
                      height: 75,
                      width: 450,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.8),
                            Colors.blue.withOpacity(0.9)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text("Hello I am Text 7"),
                      ),
                      height: 75,
                      width: 450,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColumnDescription extends StatelessWidget {
  const ColumnDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'A convenience widget that displays its children in a vertical array. We can also control how a column widget aligns its children using the property mainAxisAlignment and crossAxisAlignment. The column\'s cross-axis will run horizontally, and the main axis will run vertically',
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ColumnCode {
  const ColumnCode();
  String buildCodeString() {
    return """Column(
      children: [
        <child 1>,
        <child 2>,
        <child n>,
      ],
    ),""";
  }
}
