import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavigationBarImplementation extends StatefulWidget{
  const BottomNavigationBarImplementation({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarImplementation> createState() => _BottomNavigationBarImplementationState();
}

class _BottomNavigationBarImplementationState extends State<BottomNavigationBarImplementation> {
  int stateIndex=0;
  void _onItemTapped(int index) {
    setState(() {
      stateIndex = index;
    });
  }
  Text bodyMessage(int index){
    switch(index){
      case 0:{
        return const Text(
            "Some music which I like\nBeautiful by Bazzi\nVibrations by Mae Ji-Yoon\nBlack Sheep by Metric\nAankhein by Vilen",
            style: TextStyle(fontFamily: "SansPro",letterSpacing: 4,fontWeight: FontWeight.bold,fontSize: 25),
            textAlign: TextAlign.center,
        );
      }
      break;
      case 1:{
        return const Text(
              "Two bytes meet.  The first byte asks, \"Are you ill?\"\nThe second byte replies,\"No, just feeling a bit off.\"\n\nThere are only 10 kinds of people in this world: those who know binary and those who don’t.\n\nThere are three kinds of lies: Lies, damned lies, and benchmarks.\n\nAll programmers are playwrights, and all computers are lousy actors.",
              style: TextStyle(fontFamily: "SansPro",letterSpacing: 4,fontWeight: FontWeight.bold,fontSize: 25),
              textAlign: TextAlign.center,
              );
      }
      break;
      case 2:{
        return const Text(
          "If you want to achieve greatness stop asking for permission.\n\nTo live a creative life, we must lose our fear of being wrong.\n\nIf you are not willing to risk the usual you will have to settle for the ordinary.",
          style: TextStyle(fontFamily: "SansPro",letterSpacing: 4,fontWeight: FontWeight.bold,fontSize: 25),
          textAlign: TextAlign.center,
        );
      }
      break;
    }
    return const Text("");
  }
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'SansPro');

    return Scaffold(
      body: Center(
          child:bodyMessage(stateIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.music_note),
        label: 'Music',
      ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions),
          label: 'Jokes',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.alphaMBox),
          label: 'Motivation',
        ),
      ],
        backgroundColor: const Color(0xBFb4ffff),
        selectedItemColor:const Color(0xFF009faf) ,
        onTap: _onItemTapped,
        currentIndex: stateIndex,
      ),
    );
    throw UnimplementedError();
  }
}
class BottomNavigationBarDescription extends StatelessWidget{
  const BottomNavigationBarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
        child:Text("A material widget that's displayed at the bottom of an app for selecting among a small number of views, typically between three and five.The bottom navigation bar consists of multiple items in the form of text labels, icons, or both, laid out on top of a piece of material. It provides quick navigation between the top-level views of an app.",
          style: TextStyle(fontFamily: "SansPro",letterSpacing: 4,fontWeight: FontWeight.bold,fontSize: 25),
      textAlign: TextAlign.center,
    ),)
    );
    throw UnimplementedError();
  }

}