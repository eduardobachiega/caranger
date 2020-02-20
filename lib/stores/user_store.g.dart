// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on UserBase, Store {
  final _$userAtom = Atom(name: 'UserBase.user');

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

  final _$UserBaseActionController = ActionController(name: 'UserBase');

  @override
  void login(BuildContext context, String user, String password) {
    final _$actionInfo = _$UserBaseActionController.startAction();
    try {
      return super.login(context, user, password);
    } finally {
      _$UserBaseActionController.endAction(_$actionInfo);
    }
  }
}
