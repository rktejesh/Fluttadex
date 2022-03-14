

import 'dart:async';

import 'package:flutter/material.dart';

class SnackBarImplementation extends StatefulWidget {
  const SnackBarImplementation({Key? key}) : super(key: key);

  @override
  State<SnackBarImplementation> createState() => _SnackBarImplementationState();
}

class _SnackBarImplementationState extends State<SnackBarImplementation> {
  bool isVisible1=true;
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Don't Click me Georgie,else IT will be released",),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("It's a lure",style: TextStyle(color: Colors.black),),
                duration: const Duration(milliseconds: 5000),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.yellow.shade100,
                action: SnackBarAction(
                  label: 'Click Me 🙃',
                  textColor: Colors.red,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: const Text("LoL , Fooled you . Hahahahaha",style: TextStyle(letterSpacing: 2,),),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red.shade700,
                      )
                    );
                  },
                ),

              ),
            );
          },
        ),
    )
    );

  }
}

class SnackBarDescription extends StatelessWidget {
  const SnackBarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("A lightweight message with an optional action which briefly displays at the bottom of the screen.",style: TextStyle(fontFamily: 'SansPro',fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
    );
  }
}
