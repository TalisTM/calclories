import 'package:calories_calc/app/app_widget.dart';
import 'package:calories_calc/presentation/pages/activity/activity_page.dart';
import 'package:calories_calc/stores/activity/activity_store.dart';
import 'package:calories_calc/stores/home/home_store.dart';
import 'package:calories_calc/stores/result/result_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  try {
    GetIt getIt = GetIt.I;
    getIt.registerSingleton<HomeStore>(HomeStore());
    getIt.registerSingleton<ActivityStore>(ActivityStore());
    getIt.registerSingleton<ResultStore>(ResultStore());
  // ignore: empty_catches
  } catch (e) {}

  runApp(const AppWidget());
}