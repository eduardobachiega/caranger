import 'package:caranger/model/user.dart';
import 'package:caranger/network/Api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginBase with _$LoginStore;

abstract class LoginBase with Store {
  @observable
  double scale = 0;

  @observable
  User user;

  @action
  void adjustScale(double value) {
    scale = 1 - value;
  }

  @action
  void login(BuildContext context, String user, String password) {
    Api.caranger.login(user, password).then((it) {
      this.user = it;
      print("USER ${this.user.name}");
      Navigator.of(context).pushNamed("/menu");
    }).catchError((Object obj) {
      print(obj);
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
        // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          print("Got error ${res.statusCode} -> ${res.statusMessage}");
          break;
        default:
      }
    });
  }
}