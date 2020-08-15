import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:goldfinch/page2/page2_time_store.dart';
import 'package:goldfinch/page3/page3_api.dart';
import 'package:provider/provider.dart';

class Page2Time extends StatefulWidget {
  static String routeName = '/page2';

  @override
  _Page2TimeState createState() => _Page2TimeState();
}

class _Page2TimeState extends State<Page2Time> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo app"),
      ),
      body: Provider(
        create: (context) => Page2TimeStore(),
        child: Builder(
          builder: (BuildContext context) {
            Page2TimeStore page2TimeStore =
                Provider.of<Page2TimeStore>(context);
            page2TimeStore.initTime();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Observer(
                  builder: (_) {
                    return Text(
                      // "fdgf",
                      page2TimeStore.time_now,
                      textAlign: TextAlign.center,
                      // Page2TimeStore.count.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    );
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
                                .pushNamed(Page3Api.routeName);
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
