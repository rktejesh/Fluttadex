import 'package:flutter/material.dart';
import 'package:flutterista/models/widget_model.dart';

ListView widgetList() {
  const List<WidgetModel> widgets= [
    WidgetModel(
      name: "Container",
      implementation: ContainerImplementation(),
      description: ContainerDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Container-class.html",
    )
  ];

  return ListView(
    padding: const EdgeInsets.symmetric(vertical: 10),
    children: getList(widgets),
  );
}

List<Widget> getList(List<WidgetModel> widgets) {
  const List<ListTile> list = [];
  for (var element in widgets) {
    String name = element.name.toLowerCase();
    String subtitle = element.subtitle.toLowerCase();
    list.add(
      ListTile(
        title: Text(
          name + "Widget"
        ),
        subtitle: Text(
          subtitle
        ),
        onTap: () {},
      )
    );
  }
  return list;
}