import 'package:caranger/pages/login/store/login_store.dart';
import 'package:caranger/pages/menu/store/menu_store.dart';
import 'package:caranger/pages/menu/tabs/home/home_tab.dart';
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
  List<Widget> _children;

  MenuStore store;
  LoginStore loginStore;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<MenuStore>(context);
    loginStore = Provider.of<LoginStore>(context);

    _children = [
      HomeTab(loginStore),
      PlaceholderWidget(Colors.deepOrange),
      PlaceholderWidget(Colors.green)
    ];

    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: TabLoader(children: _children, store: store),
        bottomNavigationBar: MenuBottomNavigationBar(store: store));
  }
}




