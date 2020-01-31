// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoadingStore on LoadingBase, Store {
  final _$scaleAtom = Atom(name: 'LoadingBase.scale');

  @override
  double get scale {
    _$scaleAtom.context.enforceReadPolicy(_$scaleAtom);
    _$scaleAtom.reportObserved();
    return super.scale;
  }

  @override
  set scale(double value) {
    _$scaleAtom.context.conditionallyRunInAction(() {
      super.scale = value;
      _$scaleAtom.reportChanged();
    }, _$scaleAtom, name: '${_$scaleAtom.name}_set');
  }

  final _$LoadingBaseActionController = ActionController(name: 'LoadingBase');

  @override
  void adjustScale(double value) {
    final _$actionInfo = _$LoadingBaseActionController.startAction();
    try {
      return super.adjustScale(value);
    } finally {
      _$LoadingBaseActionController.endAction(_$actionInfo);
    }
  }
}
