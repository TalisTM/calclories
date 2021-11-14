// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$ageControllerAtom = Atom(name: '_HomeStore.ageController');

  @override
  TextEditingController get ageController {
    _$ageControllerAtom.reportRead();
    return super.ageController;
  }

  @override
  set ageController(TextEditingController value) {
    _$ageControllerAtom.reportWrite(value, super.ageController, () {
      super.ageController = value;
    });
  }

  final _$ageErrorAtom = Atom(name: '_HomeStore.ageError');

  @override
  String? get ageError {
    _$ageErrorAtom.reportRead();
    return super.ageError;
  }

  @override
  set ageError(String? value) {
    _$ageErrorAtom.reportWrite(value, super.ageError, () {
      super.ageError = value;
    });
  }

  final _$weightControllerAtom = Atom(name: '_HomeStore.weightController');

  @override
  TextEditingController get weightController {
    _$weightControllerAtom.reportRead();
    return super.weightController;
  }

  @override
  set weightController(TextEditingController value) {
    _$weightControllerAtom.reportWrite(value, super.weightController, () {
      super.weightController = value;
    });
  }

  final _$weightErrorAtom = Atom(name: '_HomeStore.weightError');

  @override
  String? get weightError {
    _$weightErrorAtom.reportRead();
    return super.weightError;
  }

  @override
  set weightError(String? value) {
    _$weightErrorAtom.reportWrite(value, super.weightError, () {
      super.weightError = value;
    });
  }

  final _$heightControllerAtom = Atom(name: '_HomeStore.heightController');

  @override
  TextEditingController get heightController {
    _$heightControllerAtom.reportRead();
    return super.heightController;
  }

  @override
  set heightController(TextEditingController value) {
    _$heightControllerAtom.reportWrite(value, super.heightController, () {
      super.heightController = value;
    });
  }

  final _$heightErrorAtom = Atom(name: '_HomeStore.heightError');

  @override
  String? get heightError {
    _$heightErrorAtom.reportRead();
    return super.heightError;
  }

  @override
  set heightError(String? value) {
    _$heightErrorAtom.reportWrite(value, super.heightError, () {
      super.heightError = value;
    });
  }

  final _$sexAtom = Atom(name: '_HomeStore.sex');

  @override
  String get sex {
    _$sexAtom.reportRead();
    return super.sex;
  }

  @override
  set sex(String value) {
    _$sexAtom.reportWrite(value, super.sex, () {
      super.sex = value;
    });
  }

  final _$validoAtom = Atom(name: '_HomeStore.valido');

  @override
  bool get valido {
    _$validoAtom.reportRead();
    return super.valido;
  }

  @override
  set valido(bool value) {
    _$validoAtom.reportWrite(value, super.valido, () {
      super.valido = value;
    });
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void resetDatas() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.resetDatas');
    try {
      return super.resetDatas();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ageController: ${ageController},
ageError: ${ageError},
weightController: ${weightController},
weightError: ${weightError},
heightController: ${heightController},
heightError: ${heightError},
sex: ${sex},
valido: ${valido}
    ''';
  }
}
