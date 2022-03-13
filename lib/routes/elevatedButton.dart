import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedButtonImplementation extends StatefulWidget {
  const ElevatedButtonImplementation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ElevatedButtonImplementationState();
  }
}

class _ElevatedButtonImplementationState extends State<ElevatedButtonImplementation> {
  // variables to be initialized before @override
  bool pressed = false;
  int count = 1;

  @override
  Widget build(BuildContext context) {

    ButtonStyle style =
    ElevatedButton.styleFrom(
      primary: pressed ? Colors.blue : Colors.pink,
      textStyle: const TextStyle(fontSize: 20),
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('You can\'t click me :)'),
          ),


          const SizedBox(height: 30),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: pressed ? Colors.pink : Colors.blue,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              setState(() {
                pressed = !pressed;
              });
            },
            child: pressed ? const Text('Good job!') : const Text('Press me'),
          ),

          const SizedBox(height: 30),

          ElevatedButton.icon(
              style: style,
              onPressed: () {},
              icon: const Icon(Icons.adb),
              label: const Text("Button with icon")
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.favorite),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  primary: Colors.red,
                ),
              ),


              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  primary: Colors.green,
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.add_moderator),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  primary: Colors.amber,
                ),
              ),
            ],
          ),

          Text(
            '+' + count.toString(),
            style: const TextStyle(fontSize: 30),
          ),


        ],
      ),
    );
  }
}

class ElevatedButtonDescription extends StatelessWidget {
  const ElevatedButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "ElevatedButton widget is used to create buttons in your flutter app.\n\n We can have all types of fancy buttons by applying our custom styling rules with ElevatedButton.styleFrom() property.",
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
