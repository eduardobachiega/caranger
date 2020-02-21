import 'package:caranger/model/car.dart';
import 'package:caranger/widget/circle_imageview.dart';
import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  final BuildContext context;
  final List<Car> carItems;

  const CarList({Key key, this.context, this.carItems}) : super();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(5.0),
        itemCount: carItems.length,
        itemBuilder: /*1*/ (context, i) {
          return _buildRow(carItems[i]);
        });
  }

  Widget _buildRow(Car car) {
    return Card(
      color: Colors.blueGrey[900],
      child: InkWell(
        splashColor: Colors.cyanAccent.withAlpha(30),
        child: Container(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "${car.modelName}",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 22),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text("${car.manufacturerName}"),
                          ),
                          CircleImageView(car.image, 80, 80, BoxFit.fill, true)
                        ])
                  ],
                ))),
      ),
    );
  }
}
