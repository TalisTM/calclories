// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ResultStore on _ResultStore, Store {
  final _$kcalAtom = Atom(name: '_ResultStore.kcal');

  @override
  double get kcal {
    _$kcalAtom.reportRead();
    return super.kcal;
  }

  @override
  set kcal(double value) {
    _$kcalAtom.reportWrite(value, super.kcal, () {
      super.kcal = value;
    });
  }

  final _$_ResultStoreActionController = ActionController(name: '_ResultStore');

  @override
  void setKcal() {
    final _$actionInfo = _$_ResultStoreActionController.startAction(
        name: '_ResultStore.setKcal');
    try {
      return super.setKcal();
    } finally {
      _$_ResultStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
kcal: ${kcal}
    ''';
  }
}
