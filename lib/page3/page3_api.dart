import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:goldfinch/page2/page2_time_store.dart';
import 'package:goldfinch/page3/page3_api_store.dart';
import 'package:goldfinch/page4/page4_currency_converter.dart';
import 'package:provider/provider.dart';

class Page3Api extends StatefulWidget {
  static String routeName = '/page3';

  @override
  _Page3ApiState createState() => _Page3ApiState();
}

class _Page3ApiState extends State<Page3Api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo app"),
      ),
      body: Provider(
        create: (context) => Page3ApiStore(),
        child: Builder(
          builder: (BuildContext context) {
            Page3ApiStore page3ApiStore = Provider.of<Page3ApiStore>(context);
            page3ApiStore.getData();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Observer(
                  builder: (_) {
                    if (page3ApiStore.state != StoreState.loaded) {
                      return Text(
                        "Loading ...",
                        // page2TimeStore.time_now,
                        textAlign: TextAlign.center,
                        // Page2TimeStore.count.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      );
                    } else {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height - 175,
                        child: ListView(
                          children: page3ApiStore.data
                              .map<Widget>(
                                (e) => Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 8,
                                                  ),
                                                  child: Text(
                                                    e.first + " " + e.last,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 8,
                                                  ),
                                                  child: Text(
                                                    e.email,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 8,
                                                  ),
                                                  child: Text(
                                                    e.balance,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6.copyWith(
                                                          color: Colors.green,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 8,
                                                  ),
                                                  child: Text(
                                                    e.created,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 10,
                                        indent: 6,
                                        color: Colors.grey,
                                        endIndent: 6,
                                        thickness: 0.5,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      );
                    }
                  },
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        elevation: 2.0,
                        fillColor: Theme.of(context).primaryColor,
                        child: Icon(
                          Icons.arrow_back,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(12.0),
                        shape: CircleBorder(),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RawMaterialButton(
                        onPressed: () {
                                                    Navigator.of(context)
                                .pushNamed(Page4CurrencyConverter.routeName);
                        },
                        elevation: 2.0,
                        fillColor: Theme.of(context).primaryColor,
                        child: Icon(
                          Icons.arrow_forward,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(12.0),
                        shape: CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
