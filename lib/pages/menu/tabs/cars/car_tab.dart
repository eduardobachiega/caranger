import 'package:caranger/pages/menu/tabs/cars/car_widgets.dart';
import 'package:caranger/stores/user_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarTab extends StatelessWidget {
  final UserStore store;

  CarTab(this.store);

  @override
  Widget build(BuildContext context) {
    return CarList(context: context, carItems: store.user.cars);
  }
}
