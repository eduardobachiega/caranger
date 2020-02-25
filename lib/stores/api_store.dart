import 'package:caranger/network/caranger/caranger_api.dart';
import 'package:caranger/widget/dialogs.dart';
import 'package:dio/dio.dart';
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
                color: Theme.of(context).primaryColor,
                duration: Duration(milliseconds: 1500),
              ),
              color: Colors.transparent,
            ),
          );
        });

    request.whenComplete(() {
      Navigator.of(context, rootNavigator: true).pop();
    }).catchError((Object obj) {
      String error = "Não foi possível concluir devido a um problema desconhecido. Tente novamente mais tarde";

      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;

          if (res.statusCode == 401) {
            error = "Credenciais inválidas";
          }

          break;
        default:
      }

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return Dialogs(
              widthDialog: 280.0,
              title: "Ops! Ocorreu um problema",
              text: error,
              buttonText: "OK",
            );
          });

      print("ERROR: $obj");
    });

    return request;
  }
}
