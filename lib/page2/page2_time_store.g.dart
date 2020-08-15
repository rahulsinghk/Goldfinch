// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page2_time_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Page2TimeStore on _Page2TimeStore, Store {
  Computed<String> _$time_nowComputed;

  @override
  String get time_now =>
      (_$time_nowComputed ??= Computed<String>(() => super.time_now)).value;

  final _$timeAtom = Atom(name: '_Page2TimeStore.time');

  @override
  DateTime get time {
    _$timeAtom.context.enforceReadPolicy(_$timeAtom);
    _$timeAtom.reportObserved();
    return super.time;
  }

  @override
  set time(DateTime value) {
    _$timeAtom.context.conditionallyRunInAction(() {
      super.time = value;
      _$timeAtom.reportChanged();
    }, _$timeAtom, name: '${_$timeAtom.name}_set');
  }

  final _$_Page2TimeStoreActionController =
      ActionController(name: '_Page2TimeStore');

  @override
  void getTime() {
    final _$actionInfo = _$_Page2TimeStoreActionController.startAction();
    try {
      return super.getTime();
    } finally {
      _$_Page2TimeStoreActionController.endAction(_$actionInfo);
    }
  }
}
