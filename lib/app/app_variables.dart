import 'package:calories_calc/stores/activity/activity_store.dart';
import 'package:calories_calc/stores/home/home_store.dart';
import 'package:calories_calc/stores/result/result_store.dart';
import 'package:get_it/get_it.dart';

final homeStore = GetIt.I.get<HomeStore>();
final activityStore = GetIt.I.get<ActivityStore>();
final resultStore = GetIt.I.get<ResultStore>();