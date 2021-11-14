import 'package:calories_calc/app/app_variables.dart';
import 'package:mobx/mobx.dart';
part 'result_store.g.dart';

class ResultStore = _ResultStore with _$ResultStore;

abstract class _ResultStore with Store {

  @observable
  double kcal = 0;

  @action
  void setKcal() {
    int age = int.tryParse(homeStore.ageController.text)!;
    double weight = double.tryParse(homeStore.weightController.text)!;
    int height = int.tryParse((double.tryParse(homeStore.heightController.text)! * 100).toStringAsFixed(0))!;

    double activity = 0;
    if(activityStore.activity == "Sedentário") activity = 1.2;
    if(activityStore.activity == "Levemente ativo") activity = 1.375;
    if(activityStore.activity == "Ativo") activity = 1.55;
    if(activityStore.activity == "Muito ativo") activity = 1.725;
    if(activityStore.activity == "atletas") activity = 1.9;

    if(homeStore.sex == "Masculino") {
      kcal = (((weight * 10) + (height * 6.25) - (age * 5)) + 5) * activity;
    } else {
      kcal = (((weight * 10) + (height * 6.25) - (age * 5)) - 161) * activity;
    }
  }
}