// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page3_api_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Page3ApiStore on _Page3ApiStore, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$_random_apiAtom = Atom(name: '_Page3ApiStore._random_api');

  @override
  ObservableFuture<http.Response> get _random_api {
    _$_random_apiAtom.context.enforceReadPolicy(_$_random_apiAtom);
    _$_random_apiAtom.reportObserved();
    return super._random_api;
  }

  @override
  set _random_api(ObservableFuture<http.Response> value) {
    _$_random_apiAtom.context.conditionallyRunInAction(() {
      super._random_api = value;
      _$_random_apiAtom.reportChanged();
    }, _$_random_apiAtom, name: '${_$_random_apiAtom.name}_set');
  }

  final _$dataAtom = Atom(name: '_Page3ApiStore.data');

  @override
  List<Data> get data {
    _$dataAtom.context.enforceReadPolicy(_$dataAtom);
    _$dataAtom.reportObserved();
    return super.data;
  }

  @override
  set data(List<Data> value) {
    _$dataAtom.context.conditionallyRunInAction(() {
      super.data = value;
      _$dataAtom.reportChanged();
    }, _$dataAtom, name: '${_$dataAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_Page3ApiStore.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$getDataAsyncAction = AsyncAction('getData');

  @override
  Future getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }
}
