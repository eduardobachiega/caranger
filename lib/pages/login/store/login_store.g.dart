// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on LoginBase, Store {
  final _$scaleAtom = Atom(name: 'LoginBase.scale');

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

  final _$userAtom = Atom(name: 'LoginBase.user');

  @override
  User get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$LoginBaseActionController = ActionController(name: 'LoginBase');

  @override
  void adjustScale(double value) {
    final _$actionInfo = _$LoginBaseActionController.startAction();
    try {
      return super.adjustScale(value);
    } finally {
      _$LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void login(BuildContext context, String user, String password) {
    final _$actionInfo = _$LoginBaseActionController.startAction();
    try {
      return super.login(context, user, password);
    } finally {
      _$LoginBaseActionController.endAction(_$actionInfo);
    }
  }
}
