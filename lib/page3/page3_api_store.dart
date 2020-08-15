import 'package:mobx/mobx.dart';
import 'dart:async';
// import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'page3_api_store.g.dart';

class Page3ApiStore = _Page3ApiStore with _$Page3ApiStore;

enum StoreState { initial, loading, loaded }

abstract class _Page3ApiStore with Store {
  @observable
  ObservableFuture<http.Response> _random_api;

  @observable
  List<Data> data = [];

  @observable
  String errorMessage;

  @computed
  StoreState get state {
    if (_random_api == null || _random_api.status == FutureStatus.rejected) {
      return StoreState.loading;
    }
    return _random_api.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  Future getData() async {
    try {
      errorMessage = null;
      _random_api = ObservableFuture(http.get('https://randomapi.com/api/6de6abfedb24f889e0b5f675edc50deb?fmt=raw&sole '));
      json.decode((await _random_api).body)[0].forEach(
        (item) {
          data.add(Data.fromJson(item));
          // print(item);
        }
      );
      // print(data);
    } catch (e) {
      errorMessage = "Couldn't fetch data. Is the device online?";
      // print(e);
    }
  }

}

class Data {
  final String first;
  final String last;
  final String email;
  final String address;
  final String created;
  final String balance;
  Data({
    this.first,
    this.last,
    this.email,
    this.address,
    this.created,
    this.balance,
  });

  factory Data.fromJson(dynamic json) {
    return Data(
      first: json['first'],
      last: json['last'],
      email: json['email'],
      address: json['address'],
      created: json['created'],
      balance: json['balance'],
    );
  }
}
