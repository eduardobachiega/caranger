import 'package:caranger/pages/menu/tabs/cars/car_tab.dart';
import 'package:caranger/stores/user_store.dart';
import 'package:caranger/pages/menu/store/menu_store.dart';
import 'package:caranger/pages/menu/tabs/home/home_tab.dart';
import 'package:caranger/pages/menu/widgets/menu_widgets.dart';
import 'package:caranger/widget/fade_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Widget> _children;

  MenuStore store;
  UserStore loginStore;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<MenuStore>(context);
    loginStore = Provider.of<UserStore>(context);

    _children = [
      HomeTab(loginStore),
      CarTab(loginStore),
      PlaceholderWidget(Colors.green)
    ];

    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: TabLoader(children: _children, store: store),
        bottomNavigationBar: MenuBottomNavigationBar(store: store));
  }
}
