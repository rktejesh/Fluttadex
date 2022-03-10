import 'package:flutter/material.dart';
import 'package:flutterista/models/widget_model.dart';

class WidgetWindow extends StatefulWidget {
  final WidgetModel item;
  const WidgetWindow({Key? key, required this.item}) : super(key: key);

  @override
  _WidgetWindowState createState() => _WidgetWindowState();
}

class _WidgetWindowState extends State<WidgetWindow> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.item.name),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'Implementation',
                  ),
                  Tab(
                    text: 'Description',
                  )
                ]
            ),
          ),
          body: TabBarView(
            children: [
              widget.item.implementation,
              widget.item.description
            ],
          ),
        )
    );
  }
}
