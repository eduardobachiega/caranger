import 'package:caranger/pages/menu/store/menu_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MenuBottomNavigationBar extends StatelessWidget {
  const MenuBottomNavigationBar({
    Key key,
    @required this.store,
  }) : super(key: key);

  final MenuStore store;

  void onTabTapped(int index) {
    store.setCurrentIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => BottomNavigationBar(
          currentIndex: store.currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(Icons.home, color: Theme.of(context).primaryColor),
              icon: new Icon(Icons.home, color: Colors.white),
              title: new Text('Home', style: TextStyle(color: Colors.white)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(Icons.mail, color: Theme.of(context).primaryColor),
              icon: new Icon(Icons.mail, color: Colors.white),
              title: new Text('Messages', style: TextStyle(color: Colors.white)),
            ),
            BottomNavigationBarItem(
                activeIcon: new Icon(Icons.person, color: Theme.of(context).primaryColor),
                icon: Icon(Icons.person, color: Colors.white),
                title: Text('Profile', style: TextStyle(color: Colors.white)))
          ],
        ));
  }
}

class TabLoader extends StatelessWidget {
  const TabLoader({
    Key key,
    @required List<Widget> children,
    @required this.store,
  }) : _children = children, super(key: key);

  final List<Widget> _children;
  final MenuStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => _children[store.currentIndex]);
  }
}