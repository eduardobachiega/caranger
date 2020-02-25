import 'package:caranger/model/car.dart';
import 'package:caranger/pages/car/widget/car_details_widgets.dart';
import 'package:caranger/stores/api_store.dart';
import 'package:caranger/widget/api_call_widget.dart';
import 'package:flutter/material.dart';

class CarDetailPage extends StatefulWidget {
  final Car car;
  final String title;

  CarDetailPage({Key key, this.title, this.car}) : super(key: key);

  @override
  _CarDetailPageState createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ApiCallWidget(
        call: ApiStore.api.getCarDetail(widget.car.id),
        builder: (BuildContext context, data) {
          return CarHeader(car: data);
        }
      ),
    );
  }
}
