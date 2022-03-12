import 'package:flutter/material.dart';

class AppbarImplementation extends StatelessWidget {
  const AppbarImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text("Appbar"),
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu_rounded),
          SizedBox(
            width: 20,
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1579546928937-641f7ac9bced?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1878&q=80",
              ),
              fit: BoxFit.cover,
              opacity: 0.5,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: SizedBox(height: 200),
        ),
      ),
    );
  }
}

class AppbarDescription extends StatelessWidget {
  const AppbarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 8.0),
        child: const Text(
          '''AppBar is usually the topmost component of the app (or sometimes the bottom-most), it contains the toolbar and some other common action buttons. As all the components in a flutter application is a widget or a combination of widgets. So AppBar is also a built-in class or widget in flutter which gives the functionality of the AppBar out of the box. The AppBar widget is based on Material Design and much of the information is already provided by other classes like MediaQuery, Scaffold as to where the content of the AppBar should be placed.''',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class AppbarCode {
  const AppbarCode();
  String buildCodeString() {
    return """AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        title: const Text("Appbar"),
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu_rounded),
          SizedBox(
            width: 20,
          ),
              ),""";
  }
}
