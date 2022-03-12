import 'package:flutter/material.dart';

class DropdownImplementation extends StatefulWidget {
  const DropdownImplementation({Key? key}) : super(key: key);

  @override
  State<DropdownImplementation> createState() => _DropdownImplementationState();
}

class _DropdownImplementationState extends State<DropdownImplementation> {
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9'
  ];

  String _activeItem = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 40,
          child: DropdownButton<String>(
            elevation: 2,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            iconEnabledColor: Colors.grey,
            iconSize: 20,
            menuMaxHeight: 450,
            hint: const Text("Just a normal dropdown"),
            onChanged: (e) {
              setState(() {
                _activeItem = e!;
              });
            },
            value: _activeItem,
            items: _items
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class DropdownDescription extends StatelessWidget {
  const DropdownDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(),
        child: const Text(
          'A DropDownButton is a material design button. The DropDownButton is a widget that we can use to select one unique value from a set of values. It lets the user select one value from a number of items. The default value shows the currently selected value. We can even include a down arrow icon on the list. On clicking the DropDownButton it opens a list list of items, from which the user can select the desired option.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
