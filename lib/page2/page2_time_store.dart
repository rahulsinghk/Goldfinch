import 'package:mobx/mobx.dart';
import 'dart:async';
import 'package:intl/intl.dart';

part 'page2_time_store.g.dart';

class Page2TimeStore = _Page2TimeStore with _$Page2TimeStore;

abstract class _Page2TimeStore with Store {
  @observable
  DateTime time = DateTime.now();

  @computed
  String get time_now {
    return formatDateTime(time);
  }

  void initTime() {
    // time = DateTime.now();
    Timer.periodic(Duration(seconds: 1), (Timer t) => getTime());
  }

  @action
  void getTime() {
    time = DateTime.now();
  }

    String formatDateTime(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm:ss').format(dateTime);
  }

}
