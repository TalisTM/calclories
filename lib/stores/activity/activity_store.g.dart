// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ActivityStore on _ActivityStore, Store {
  final _$activityAtom = Atom(name: '_ActivityStore.activity');

  @override
  String get activity {
    _$activityAtom.reportRead();
    return super.activity;
  }

  @override
  set activity(String value) {
    _$activityAtom.reportWrite(value, super.activity, () {
      super.activity = value;
    });
  }

  @override
  String toString() {
    return '''
activity: ${activity}
    ''';
  }
}
