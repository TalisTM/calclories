import 'package:mobx/mobx.dart';
part 'activity_store.g.dart';

class ActivityStore = _ActivityStore with _$ActivityStore;

abstract class _ActivityStore with Store {

  @observable
  String activity = "";

  void resetDatas() {
    activity = "";
  }
}