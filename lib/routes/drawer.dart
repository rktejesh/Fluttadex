import 'package:flutter/material.dart';

class DrawerImplementation extends StatefulWidget {
  const DrawerImplementation({Key? key}) : super(key: key);

  @override
  State<DrawerImplementation> createState() => _DrawerImplementationState();
}

class _DrawerImplementationState extends State<DrawerImplementation> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Material(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: const <Widget>[
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.white,
                ),
                title: Text(
                  "Menu 1",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                hoverColor: Colors.white70,
              ),
              SizedBox(
                height: 14,
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.white,
                ),
                title: Text(
                  "Menu 2",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                hoverColor: Colors.white70,
              ),
              SizedBox(
                height: 14,
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.white,
                ),
                title: Text(
                  "Menu 3",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                hoverColor: Colors.white70,
              ),
              SizedBox(
                height: 14,
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.white,
                ),
                title: Text(
                  "Menu 4",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                hoverColor: Colors.white70,
              ),
              SizedBox(
                height: 14,
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.white,
                ),
                title: Text(
                  "Menu 5",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                hoverColor: Colors.white70,
              ),
              SizedBox(
                height: 14,
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.white60,
                ),
                title: Text(
                  "Submenu 1",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                hoverColor: Colors.white70,
              ),
              SizedBox(
                height: 14,
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.white60,
                ),
                title: Text(
                  "Submenu 2",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                ),
                hoverColor: Colors.white70,
              ),
              SizedBox(
                height: 14,
              ),
            ],
          ),
          color: Colors.lightBlueAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.menu),
        onPressed: () {
          if (_scaffoldKey.currentState!.isDrawerOpen) {
            _scaffoldKey.currentState!.openEndDrawer();
          } else {
            _scaffoldKey.currentState!.openDrawer();
          }
        },
      ),
    );
  }
}

class DrawerDescription extends StatelessWidget {
  const DrawerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(),
        child: const Text(
          'The Drawer widget is used as an additional sub-router that consists of various links to other routes (ie, pages) in the same application. It has a horizontal movement from the edge of the Scaffold that navigates the link to different routes in the flutter app',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
