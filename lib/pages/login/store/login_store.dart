import 'package:caranger/model/user.dart';
import 'package:caranger/network/Api.dart';
import 'package:caranger/widget/dialogs.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginBase with _$LoginStore;

abstract class LoginBase with Store {
  var dialogs = Dialogs();

  @observable
  User user;

  @action
  void login(BuildContext context, String user, String password) {
    dialogs.waiting(context);
    Api.caranger.login(user, password).then((it) {
      this.user = it;
      print("USER ${this.user.name}");
      dialogs.dismiss(context, proceed(context));

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

  proceed(BuildContext context) async{
    await Navigator.of(context).pushNamed("/menu");
  }
}