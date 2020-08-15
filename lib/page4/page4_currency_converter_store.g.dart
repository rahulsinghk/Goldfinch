// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page4_currency_converter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Page4CurrencyConverterStore on _Page4CurrencyConverterStore, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$_converterApiAtom =
      Atom(name: '_Page4CurrencyConverterStore._converterApi');

  @override
  ObservableFuture<http.Response> get _converterApi {
    _$_converterApiAtom.context.enforceReadPolicy(_$_converterApiAtom);
    _$_converterApiAtom.reportObserved();
    return super._converterApi;
  }

  @override
  set _converterApi(ObservableFuture<http.Response> value) {
    _$_converterApiAtom.context.conditionallyRunInAction(() {
      super._converterApi = value;
      _$_converterApiAtom.reportChanged();
    }, _$_converterApiAtom, name: '${_$_converterApiAtom.name}_set');
  }

  final _$fromCurrencyAtom =
      Atom(name: '_Page4CurrencyConverterStore.fromCurrency');

  @override
  String get fromCurrency {
    _$fromCurrencyAtom.context.enforceReadPolicy(_$fromCurrencyAtom);
    _$fromCurrencyAtom.reportObserved();
    return super.fromCurrency;
  }

  @override
  set fromCurrency(String value) {
    _$fromCurrencyAtom.context.conditionallyRunInAction(() {
      super.fromCurrency = value;
      _$fromCurrencyAtom.reportChanged();
    }, _$fromCurrencyAtom, name: '${_$fromCurrencyAtom.name}_set');
  }

  final _$toCurrencyAtom =
      Atom(name: '_Page4CurrencyConverterStore.toCurrency');

  @override
  String get toCurrency {
    _$toCurrencyAtom.context.enforceReadPolicy(_$toCurrencyAtom);
    _$toCurrencyAtom.reportObserved();
    return super.toCurrency;
  }

  @override
  set toCurrency(String value) {
    _$toCurrencyAtom.context.conditionallyRunInAction(() {
      super.toCurrency = value;
      _$toCurrencyAtom.reportChanged();
    }, _$toCurrencyAtom, name: '${_$toCurrencyAtom.name}_set');
  }

  final _$inputValueAtom =
      Atom(name: '_Page4CurrencyConverterStore.inputValue');

  @override
  double get inputValue {
    _$inputValueAtom.context.enforceReadPolicy(_$inputValueAtom);
    _$inputValueAtom.reportObserved();
    return super.inputValue;
  }

  @override
  set inputValue(double value) {
    _$inputValueAtom.context.conditionallyRunInAction(() {
      super.inputValue = value;
      _$inputValueAtom.reportChanged();
    }, _$inputValueAtom, name: '${_$inputValueAtom.name}_set');
  }

  final _$outputValueAtom =
      Atom(name: '_Page4CurrencyConverterStore.outputValue');

  @override
  String get outputValue {
    _$outputValueAtom.context.enforceReadPolicy(_$outputValueAtom);
    _$outputValueAtom.reportObserved();
    return super.outputValue;
  }

  @override
  set outputValue(String value) {
    _$outputValueAtom.context.conditionallyRunInAction(() {
      super.outputValue = value;
      _$outputValueAtom.reportChanged();
    }, _$outputValueAtom, name: '${_$outputValueAtom.name}_set');
  }

  final _$errorMessageAtom =
      Atom(name: '_Page4CurrencyConverterStore.errorMessage');

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

  final _$_Page4CurrencyConverterStoreActionController =
      ActionController(name: '_Page4CurrencyConverterStore');

  @override
  void updateFromCurrency(String curr) {
    final _$actionInfo =
        _$_Page4CurrencyConverterStoreActionController.startAction();
    try {
      return super.updateFromCurrency(curr);
    } finally {
      _$_Page4CurrencyConverterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateToCurrency(String curr) {
    final _$actionInfo =
        _$_Page4CurrencyConverterStoreActionController.startAction();
    try {
      return super.updateToCurrency(curr);
    } finally {
      _$_Page4CurrencyConverterStoreActionController.endAction(_$actionInfo);
    }
  }
}
