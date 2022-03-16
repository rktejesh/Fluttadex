import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterista/models/widget_model.dart';
import 'package:flutterista/models/widget_window.dart';
import 'package:flutterista/routes/BottomNavigationBar.dart';
import 'package:flutterista/routes/SnackBar.dart';
import 'package:flutterista/routes/animatedcontainer.dart';
import 'package:flutterista/routes/appBar.dart';
import 'package:flutterista/routes/checkbox.dart';
import 'package:flutterista/routes/cards.dart';
import 'package:flutterista/routes/circularProgressIndicator.dart';
import 'package:flutterista/routes/column.dart';
import 'package:flutterista/routes/expansionPanel.dart';
import 'package:flutterista/routes/drawer.dart';
import 'package:flutterista/routes/dropDown.dart';
import 'package:flutterista/routes/floatingActionButton.dart';
import 'package:flutterista/routes/form.dart';
import 'package:flutterista/routes/image.dart';
import 'package:flutterista/routes/icon.dart';
import 'package:flutterista/routes/elevatedButton.dart';
import 'package:flutterista/routes/slider.dart';
import 'package:flutterista/routes/sliverappbar.dart';

import 'routes/row.dart';
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
      WidgetModel(
        name: "Row",
        implementation: RowImplementation(),
        description: RowDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Row-class.html",
      ),
      WidgetModel(
        name: "Column",
        implementation: ColumnImplementation(),
        description: ColumnDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Column-class.html",
      ),
      WidgetModel(
        name: "Floating Action Button",
        implementation: FloatingActionButtonImplementation(),
        description: FloatingActionButtonDescription(),
        link:
            "https://api.flutter.dev/flutter/material/FloatingActionButton-class.html",
      ),
      WidgetModel(
        name: "Image",
        implementation: ImageImplementation(),
        description: ImageDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Image-class.html",
      ),
      WidgetModel(
        name: "Icon",
        implementation: IconImplementation(),
        description: IconDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Icon-class.html",
      ),
      WidgetModel(
          name: "BottomNavigationBar",
          link:
              "https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html",
          implementation: BottomNavigationBarImplementation(),
          description: BottomNavigationBarDescription()),
      WidgetModel(
        name: "ElevatedButton",
        implementation: ElevatedButtonImplementation(),
        description: ElevatedButtonDescription(),
        link:
            "https://api.flutter.dev/flutter/material/ElevatedButton-class.html",
      ),
      WidgetModel(
        name: "Dropdown",
        implementation: DropdownImplementation(),
        description: DropdownDescription(),
        link:
            "https://api.flutter.dev/flutter/material/DropdownButton-class.html",
      ),
      WidgetModel(
        name: "ExpansionPanel",
        implementation: ExpansionPanelImplementaion(),
        description: ExpansionPanelDescription(),
        link:
            "https://api.flutter.dev/flutter/material/ExpansionPanelList-class.html",
      ),
      WidgetModel(
        name: "Drawer",
        implementation: DrawerImplementation(),
        description: DrawerDescription(),
        link: "https://docs.flutter.dev/cookbook/design/drawer",
      ),
      WidgetModel(
        name: "CircularProgressIndicator",
        implementation: CircularProgressIndicatorImplementation(),
        description: CircularProgressIndicatorDescription(),
        link:
            "https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html",
      ),
      WidgetModel(
        name: "Card",
        implementation: CardImplementation(),
        description: CardDescription(),
        link: "https://api.flutter.dev/flutter/material/Card-class.html",
      ),
      WidgetModel(
        name: "CheckBox",
        implementation: CheckBoxImplementation(),
        description: CheckBoxDescription(),
        link: "https://api.flutter.dev/flutter/material/Checkbox-class.html",
      ),
      WidgetModel(
          name: "SnackBar",
          link: "https://api.flutter.dev/flutter/material/SnackBar-class.html",
          implementation: SnackBarImplementation(),
          description: SnackBarDescription()),
      WidgetModel(
        name: "Form",
        implementation: FormImplementation(),
        description: FormDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Form-class.html",
      ),
      WidgetModel(
        name: "Slider",
        implementation: SliderImplementation(),
        description: SliderDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Form-class.html",
      ),
      WidgetModel(
        name: "AnimatedContainer",
        implementation: AnimatedContainerImplementation(),
        description: AnimatedContainerDescription(),
        link:
            "https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html",
      ),
      WidgetModel(
        name: "SliverAppBar",
        implementation: SliverAppBarImplementation(),
        description: SliverAppBarDescription(),
        link:
            "https://api.flutter.dev/flutter/material/SliverAppBar-class.html",
      )
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
