import 'package:caranger/pages/menu/store/menu_store.dart';
import 'package:caranger/widget/fade_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MenuBottomNavigationBar extends StatelessWidget {
  const MenuBottomNavigationBar({Key key, @required this.store})
      : super(key: key);

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
                  activeIcon: new Icon(Icons.dashboard,
                      color: Theme.of(context).primaryColor),
                  icon: new Icon(Icons.dashboard, color: Colors.white70),
                  title: new Text('Dashboard',
                      style: TextStyle(color: Colors.white70)),
                ),
                BottomNavigationBarItem(
                  activeIcon: new Icon(Icons.directions_car,
                      color: Theme.of(context).primaryColor),
                  icon: new Icon(Icons.directions_car, color: Colors.white70),
                  title: new Text('Carros',
                      style: TextStyle(color: Colors.white70)),
                ),
                BottomNavigationBarItem(
                    activeIcon: new Icon(Icons.person,
                        color: Theme.of(context).primaryColor),
                    icon: Icon(Icons.person, color: Colors.white70),
                    title:
                        Text('Perfil', style: TextStyle(color: Colors.white70)))
              ],
            ));
  }
}

class TabLoader extends StatelessWidget {
  const TabLoader(
      {Key key, @required List<Widget> children, @required this.store})
      : _children = children,
        super(key: key);

  final List<Widget> _children;
  final MenuStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => _children[store.currentIndex]);
  }
}
