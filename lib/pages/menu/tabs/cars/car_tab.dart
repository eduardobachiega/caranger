import 'package:caranger/pages/menu/tabs/cars/widget/car_widgets.dart';
import 'package:caranger/stores/user_store.dart';
import 'package:caranger/widget/fade_in_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarTab extends StatelessWidget {
  final UserStore store;

  CarTab(this.store);

  @override
  Widget build(BuildContext context) {
    return FadeIn(delay: 2, child: CarList(context: context, carItems: store.user.cars));
  }
}
