import 'package:caranger/model/user.dart';
import 'package:caranger/stores/api_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginBase with _$LoginStore;

abstract class LoginBase with Store {
  @observable
  User user;

  @action
  void login(BuildContext context, String user, String password) {
    ApiStore.loadingRequest(context, ApiStore.api.login(user, password)).then((value) => {
      this.user = value,
      proceed(context)
    });
  }

  proceed(BuildContext context) async{
    await Navigator.of(context).pushNamed("/menu");
  }
}