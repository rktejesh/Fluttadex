import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxImplementation extends StatefulWidget {
  const CheckBoxImplementation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CheckBoxImplemetaionState();
  }
}

class _CheckBoxImplemetaionState extends State<CheckBoxImplementation> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.amber,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text("FLUTTER"),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.blue,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text("IS"),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.purple,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text("AWESOME"),
            ],
          ),

          SizedBox(
            width: 100,
            height: 100,
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: Colors.white,
                value: true,
                onChanged: (bool? value) {},
              ),
              const Text("Checked checkbox"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: Colors.white,
                value: false,
                onChanged: (bool? value) {},
              ),
              const Text("Unchecked checkbox"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: Colors.white,
                tristate: true,
                value: null,
                onChanged: (bool? value) {},
              ),
              const Text("Null checkbox"),
            ],
          ),

        ],
      ),
    );
  }
}

class CheckBoxDescription extends StatelessWidget {
  const CheckBoxDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Center(
        child: Text(
          "A Checkbox widget is used to display, well a checkbox :)\n\nIt can have three values true, false and null. A checkbox listens to the onChanged() listener to change it's state when clicked.",
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
