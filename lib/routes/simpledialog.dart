import 'package:flutter/material.dart';

class SimpleDialogImplementation extends StatelessWidget {
  const SimpleDialogImplementation({Key? key}) : super(key: key);

  void showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text(
            'I am a SimpleDialog!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.blue,
            ),
          ),
          children: [
            const Text(
              'Do you like me?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            ButtonBar(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.thumb_down,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.thumb_up_sharp,
                    color: Colors.green,
                  ),
                ),
              ],
            )
          ],
          contentPadding: const EdgeInsets.all(10),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: 250,
        child: ElevatedButton(
          onPressed: () {
            showSimpleDialog(context);
          },
          child: const Text(
            'See SimpleDialog',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class SimpleDialogDescription extends StatelessWidget {
  const SimpleDialogDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "A simple dialog offers the user a choice between several options.\n\nA simple dialog has an optional title that is displayed above the choices.",
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
