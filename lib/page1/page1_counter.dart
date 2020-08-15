import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:goldfinch/page1/page1_counter_store.dart';
import 'package:goldfinch/page2/page2_time.dart';
import 'package:provider/provider.dart';

class Page1Counter extends StatefulWidget {
  static String routeName = '/';

  @override
  _Page1CounterState createState() => _Page1CounterState();
}

class _Page1CounterState extends State<Page1Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo app"),
      ),
      body: Provider(
        create: (context) => Page1CounterStore(),
        child: Builder(builder: (BuildContext context) {
          Page1CounterStore page1CounterStore =
              Provider.of<Page1CounterStore>(context);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Observer(
                  builder: (_) {
                    return Text(
                      page1CounterStore.count.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          page1CounterStore.decrement();
                        },
                        child: Text(
                          "-",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      RaisedButton(
                        onPressed: () {
                          page1CounterStore.increment();
                        },
                        child: Text(
                          "+",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Stack(
                  children: <Widget>[
                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(16.0),
                    //     child: FloatingActionButton(
                    //       onPressed: () {},
                    //       child: Icon(Icons.arrow_back),
                    //     ),
                    //   ),
                    // ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(Page2Time.routeName);
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            size: 35.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
