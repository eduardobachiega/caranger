import 'package:mobx/mobx.dart';

part 'car_detail_store.g.dart';

class CarDetailStore = CarDetailBase with _$CarDetailStore;

abstract class CarDetailBase with Store {
  @observable
  int currentIndex = 0;


  @action
  void setCurrentIndex(int currentIndex) {
    this.currentIndex = currentIndex;
  }
}