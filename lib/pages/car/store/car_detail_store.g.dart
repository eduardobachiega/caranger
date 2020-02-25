// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarDetailStore on CarDetailBase, Store {
  final _$currentIndexAtom = Atom(name: 'CarDetailBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$CarDetailBaseActionController =
      ActionController(name: 'CarDetailBase');

  @override
  void setCurrentIndex(int currentIndex) {
    final _$actionInfo = _$CarDetailBaseActionController.startAction();
    try {
      return super.setCurrentIndex(currentIndex);
    } finally {
      _$CarDetailBaseActionController.endAction(_$actionInfo);
    }
  }
}
