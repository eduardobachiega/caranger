import 'package:caranger/pages/login/store/login_store.dart';
import 'package:caranger/pages/menu/tabs/home/widget/home_widgets.dart';
import 'package:caranger/widget/circle_imageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

class HomeTab extends StatelessWidget {
  final LoginStore store;

  HomeTab(this.store);

  String getCurrentTimeMessage() {
    TimeOfDay now = TimeOfDay.now();
    if (now.hour < 12)
      return 'Bom dia,';
    else if (now.hour < 18) return 'Boa tarde,';

    return 'Boa noite,';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(getCurrentTimeMessage()),
                Text('${store.user.name}',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ]),
          Divider(color: Colors.transparent, height: 50),
          CircleImageView('eduardo.jpeg', 150.0, 150.0, BoxFit.fill),
          Divider(color: Colors.transparent, height: 50),
          Row(
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Resumo',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Divider(color: Colors.transparent, height: 10),
                    DashItem(
                        imageName: 'logo.png',
                        title: '${store.user.cars.length}',
                        subtitle: 'veículos cadastrados'),
                    Divider(color: Colors.transparent, height: 20),
                    DashItem(
                        imageName: 'fuel.png',
                        title: 'R\$\ 250,00',
                        subtitle: 'gastos com combustíveis'),
                    Divider(color: Colors.transparent, height: 20),
                    DashItem(
                        imageName: 'tools.png',
                        title: 'R\$\ 5.523,90',
                        subtitle: 'gastos com manutenções'),
                  ])
            ],
          )
        ],
      ),
    );
  }
}
