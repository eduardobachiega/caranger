import 'package:caranger/pages/login/store/login_store.dart';
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
    else if (now.hour < 18)
      return 'Boa tarde,';

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
                    Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('logo.png'),
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          width: 25,
                          color: Colors.transparent,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('${store.user.cars.length}',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            Text('veículos cadastrados')
                          ],
                        ),
                      ],
                    ),
                    Divider(color: Colors.transparent, height: 20),
                    Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('fuel.png'),
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          width: 25,
                          color: Colors.transparent,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('R\$\ 250,00',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            Text('gastos com combustíveis')
                          ],
                        ),
                      ],
                    ),
                    Divider(color: Colors.transparent, height: 20),
                    Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('tools.png'),
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          width: 25,
                          color: Colors.transparent,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('R\$\ 5.523,90',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            Text('gastos com manutenções')
                          ],
                        ),
                      ],
                    ),
                  ])
            ],
          )
        ],
      ),
    );
  }
}
