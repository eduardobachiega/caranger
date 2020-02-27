import 'package:caranger/model/car.dart';
import 'package:flutter/material.dart';

class InfoTab extends StatelessWidget {
  final Car car;

  InfoTab({this.car});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Marca", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22)),
          Text(car.manufacturerName),
          Divider(color: Colors.transparent,),
          Text("Modelo", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22)),
          Text(car.modelName),
          Divider(color: Colors.transparent,),
          Text("Ano", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22)),
          Text("${car.year}"),
          Divider(color: Colors.transparent,),
          Text("Tipo de combustível", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22)),
          Text(car.fuel),
          Divider(color: Colors.transparent,),
          Text("Cor", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22)),
          Container(height: 20, color: hexToColor(car.color), width: 60,),
          Divider(color: Colors.transparent,),
          Text("Custos totais", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22)),
          Text("R\$ ${car.totalCosts}"),
        ],
      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}