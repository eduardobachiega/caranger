import 'package:caranger/pages/login/login_page.dart';
import 'package:caranger/pages/login/store/login_store.dart';
import 'package:caranger/pages/menu/menu_page.dart';
import 'package:caranger/pages/menu/store/menu_store.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Route _getRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/menu":
        return PageTransition(
            type: PageTransitionType.fade,
            child: MenuPage(
              title: "Menu",
            ));

      case '/counter':
        return PageTransition(
            type: PageTransitionType.fade,
            child: LoginPage(
              title: "Counter",
            ));

      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<LoginStore>(builder: (_) => LoginStore()),
          Provider<MenuStore>(builder: (_) => MenuStore(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Caranger',
          theme: ThemeData(
              canvasColor: Color(0xFF161C20),
              primaryColor: Color(0xFFCE5834),
              accentColor: Color(0xFFCE5834),
              primaryColorDark: Color(0xFF161C20),
              primaryColorLight: Color(0xFF323C44),
              cursorColor: Color(0xFFCE5834),
              textTheme: TextTheme(
                  body1: TextStyle(color: Colors.white),
                  display1: TextStyle(color: Colors.white))),
          onGenerateRoute: _getRoute,
          home: LoginPage(),
        ));
  }
}
