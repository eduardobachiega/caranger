import 'package:mobx/mobx.dart';

part 'menu_store.g.dart';

class MenuStore = MenuBase with _$MenuStore;

abstract class MenuBase with Store {
  @observable
  int currentIndex = 0;


  @action
  void setCurrentIndex(int currentIndex) {
    this.currentIndex = currentIndex;
  }
}