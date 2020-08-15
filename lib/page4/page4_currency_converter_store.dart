import 'package:mobx/mobx.dart';
import 'dart:async';
// import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'page4_currency_converter_store.g.dart';

class Page4CurrencyConverterStore = _Page4CurrencyConverterStore
    with _$Page4CurrencyConverterStore;

enum StoreState { initial, loading, loaded }

abstract class _Page4CurrencyConverterStore with Store {
  @observable
  ObservableFuture<http.Response> _converterApi;

  @observable
  String fromCurrency = "INR";

  @observable
  String toCurrency = "USD";

  @observable
  double inputValue;

  @observable
  String outputValue = "";

  @observable
  String errorMessage;

  @computed
  StoreState get state {
    if (_converterApi == null ||
        _converterApi.status == FutureStatus.rejected) {
      return StoreState.loading;
    }
    return _converterApi.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  Future getData() async {
    // print("Clicked");
    try {
      errorMessage = null;
      _converterApi = ObservableFuture(http.get(
          'https://free.currconv.com/api/v7/convert?q=${fromCurrency}_${toCurrency}&compact=ultra&apiKey=dd8e835c3d0a875afe5e'));
      outputValue = (inputValue *
              json.decode(
                  (await _converterApi).body)["${fromCurrency}_${toCurrency}"])
          .toString();
      // print(data);
    } catch (e) {
      errorMessage = "Couldn't fetch data. Is the device online?";
      print(e);
    }
  }

  @action
  void updateFromCurrency(String curr) {
    fromCurrency = curr;
  }

  @action
  void updateToCurrency(String curr) {
    toCurrency = curr;
  }
}
