import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  
  @observable
  TextEditingController ageController = TextEditingController();
  @observable
  String? ageError;

  @observable
  TextEditingController weightController = TextEditingController();
  @observable
  String? weightError;

  @observable
  TextEditingController heightController = TextEditingController();
  @observable
  String? heightError;

  @observable
  String sex = "";

  @observable
  bool valido = false;

  @action
  void resetDatas() {
    ageController.text = "";
    ageError = null;
    weightController.text = "";
    weightError = null;
    heightController.text = "";
    heightError = null;

    sex = "";
    valido = false;

  }
}