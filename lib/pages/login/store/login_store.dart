import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginBase with _$LoginStore;

abstract class LoginBase with Store {
  @observable
  double scale = 0;

  @action
  void adjustScale(double value) {
    scale = 1 - value;
  }
}