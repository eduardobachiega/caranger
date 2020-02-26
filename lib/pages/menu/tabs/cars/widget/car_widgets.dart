import 'package:caranger/model/car.dart';
import 'package:caranger/pages/car/car_detail_page.dart';
import 'package:caranger/widget/circle_imageview.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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

  void onCardTap(Car car) {
    Navigator.push(context, PageTransition(
        type: PageTransitionType.fade,
        child: CarDetailPage(title: "${car.manufacturerName} ${car.modelName}", car: car)
    ));
  }

  Widget _buildRow(Car car) {
    return Card(
      color: Theme.of(context).primaryColorLight,
      child: InkWell(
        onTap: () => onCardTap(car),
        splashColor: Theme.of(context).primaryColor,
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
