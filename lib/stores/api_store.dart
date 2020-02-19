import 'package:caranger/network/caranger/caranger_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ApiStore {
  static CarangerApi api = CarangerApi();

  static Future<T> loadingRequest<T>(
      BuildContext context, Future<T> request) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Center(
            child: Container(
              child: SpinKitChasingDots(
                size: 75.0,
                color: Colors.blue,
                duration: Duration(milliseconds: 1500),
              ),
              color: Colors.transparent,
            ),
          );
        });

    request.whenComplete(() {
      Navigator.of(context, rootNavigator: true).pop();
    }).catchError((e) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {

          });
    });

    return request;
  }
}
