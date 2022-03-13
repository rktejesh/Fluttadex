import 'package:flutter/material.dart';

class SliderImplementation extends StatefulWidget {
  const SliderImplementation({Key? key}) : super(key: key);

  @override
  _SliderImplementationState createState() => _SliderImplementationState();
}

class _SliderImplementationState extends State<SliderImplementation> {
  double _slider1Value = 50;
  double _slider2Value = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("A smooth slider having value: " + _slider1Value.round().toString()),
        Slider(
          value: _slider1Value,
          max: 100,
          divisions: null,
          label: _slider1Value.round().toString(),
          onChanged: (double value) {
            setState(() {
              _slider1Value = value;
            });
          },
        ),

        Text("A slider having descrete values: " + _slider2Value.round().toString()),
        Slider(
          value: _slider2Value,
          max: 100,
          divisions: 5,
          label: _slider2Value.round().toString(),
          onChanged: (double value) {
            setState(() {
              _slider2Value = value;
            });
          },
        ),

        Text("A disabled slider"),
        Slider(
          value: 20,
          max: 100,
          divisions: 20,
          label: "20",
          onChanged: (double value) {},
          activeColor: Colors.grey,
        ),

      ],
    );
  }
}

class SliderDescription extends StatelessWidget {
  const SliderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "A slider can be used to select from either a continuous or a discrete set of values. The slider can also be made disabled if the onChanged listener is null.",
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
