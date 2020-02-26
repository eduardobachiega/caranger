import 'package:mobx/mobx.dart';

part 'car_details_store.g.dart';

class CarDetailsStore = CarDetailsBase with _$CarDetailsStore;

abstract class CarDetailsBase with Store {
  @observable
  bool closed = false;

  @action
  void updateAppBarStatus(bool status){
    print("EVENT: $status");
    this.closed = status;
  }
}