// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenuStore on MenuBase, Store {
  final _$currentIndexAtom = Atom(name: 'MenuBase.currentIndex');

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

  final _$MenuBaseActionController = ActionController(name: 'MenuBase');

  @override
  void setCurrentIndex(int currentIndex) {
    final _$actionInfo = _$MenuBaseActionController.startAction();
    try {
      return super.setCurrentIndex(currentIndex);
    } finally {
      _$MenuBaseActionController.endAction(_$actionInfo);
    }
  }
}
