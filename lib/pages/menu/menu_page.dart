import 'package:caranger/pages/menu/store/menu_store.dart';
import 'package:caranger/pages/menu/tabs/tab1.dart';
import 'package:caranger/pages/menu/widgets/menu_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];

  MenuStore store;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<MenuStore>(context);
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: TabLoader(children: _children, store: store),
        bottomNavigationBar: MenuBottomNavigationBar(store: store));
  }
}




