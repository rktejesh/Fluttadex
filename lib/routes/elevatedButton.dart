import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedButtonImplementation extends StatelessWidget {
  const ElevatedButtonImplementation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

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
            style: style,
            onPressed: () {
              // print("Hello");
            },
            child: const Text('Normal Button'),
          ),

          const SizedBox(height: 30),

          ElevatedButton.icon(
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
                child: const Icon(Icons.favorite),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  primary: Colors.red,
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
