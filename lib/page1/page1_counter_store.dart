import 'package:mobx/mobx.dart';

part 'page1_counter_store.g.dart';

    class Page1CounterStore = _Page1CounterStore with _$Page1CounterStore;
    

    abstract class _Page1CounterStore with Store {
      
      @observable
      int count = 0;

      @action
      void increment() {
        count++;
      }
      @action
      void decrement() {
        count--;
      }
    }