// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarDetailsStore on CarDetailsBase, Store {
  final _$closedAtom = Atom(name: 'CarDetailsBase.closed');

  @override
  bool get closed {
    _$closedAtom.context.enforceReadPolicy(_$closedAtom);
    _$closedAtom.reportObserved();
    return super.closed;
  }

  @override
  set closed(bool value) {
    _$closedAtom.context.conditionallyRunInAction(() {
      super.closed = value;
      _$closedAtom.reportChanged();
    }, _$closedAtom, name: '${_$closedAtom.name}_set');
  }

  final _$CarDetailsBaseActionController =
      ActionController(name: 'CarDetailsBase');

  @override
  void updateAppBarStatus(bool status) {
    final _$actionInfo = _$CarDetailsBaseActionController.startAction();
    try {
      return super.updateAppBarStatus(status);
    } finally {
      _$CarDetailsBaseActionController.endAction(_$actionInfo);
    }
  }
}
