import 'package:flutter/material.dart';
import 'package:flutterista/models/widget_model.dart';
import 'package:flutterista/models/widget_window.dart';
import 'package:flutterista/routes/appBar.dart';

import 'routes/container.dart';

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key}) : super(key: key);

  @override
  _ListBuilderState createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  @override
  Widget build(BuildContext context) {
    return widgetList();
  }

  ListView widgetList() {
    const List<WidgetModel> widgets = [
      WidgetModel(
        name: "Container",
        implementation: ContainerImplementation(),
        description: ContainerDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Container-class.html",
      ),
      WidgetModel(
        name: "App Bar",
        implementation: AppbarImplementation(),
        description: AppbarDescription(),
        link: "https://api.flutter.dev/flutter/material/AppBar-class.html",
      ),
    ];

    return ListView(
      children: getList(widgets),
    );
  }

  List<Widget> getList(List<WidgetModel> widgets) {
    List<ListTile> list = [];
    for (var element in widgets) {
      String name = element.name;
      String subtitle = element.subtitle;
      list.add(ListTile(
        title: Text(name + " Widget"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WidgetWindow(item: element)),
          );
        },
      ));
    }
    return list;
  }
}
