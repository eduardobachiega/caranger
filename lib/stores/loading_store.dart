import 'package:caranger/widget/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'loading_store.g.dart';

class LoadingStore = LoadingBase with _$LoadingStore;

abstract class LoadingBase with Store {
  @observable
  double scale = 0;

  @action
  void adjustScale(double value) {
    scale = 1 - value;
  }
}