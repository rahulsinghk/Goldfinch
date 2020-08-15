// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page1_counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Page1CounterStore on _Page1CounterStore, Store {
  final _$countAtom = Atom(name: '_Page1CounterStore.count');

  @override
  int get count {
    _$countAtom.context.enforceReadPolicy(_$countAtom);
    _$countAtom.reportObserved();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.context.conditionallyRunInAction(() {
      super.count = value;
      _$countAtom.reportChanged();
    }, _$countAtom, name: '${_$countAtom.name}_set');
  }

  final _$_Page1CounterStoreActionController =
      ActionController(name: '_Page1CounterStore');

  @override
  void increment() {
    final _$actionInfo = _$_Page1CounterStoreActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_Page1CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_Page1CounterStoreActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_Page1CounterStoreActionController.endAction(_$actionInfo);
    }
  }
}
