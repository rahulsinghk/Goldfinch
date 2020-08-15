import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:goldfinch/page1/page1_counter.dart';
import 'package:goldfinch/page2/page2_time_store.dart';
import 'package:goldfinch/page3/page3_api_store.dart';
import 'package:goldfinch/page4/page4_currency_converter_store.dart';
import 'package:provider/provider.dart';

List<String> users = <String>[
  'XCD',
  'EUR',
  'GEL',
  'XCD',
  'HTG',
  'INR',
  'ILS',
  'KZT',
  'KWD',
  'LSL',
  'USD'
];

class Page4CurrencyConverter extends StatefulWidget {
  static String routeName = '/page4';

  @override
  _Page4CurrencyConverterState createState() => _Page4CurrencyConverterState();
}

class _Page4CurrencyConverterState extends State<Page4CurrencyConverter> {
  final formKey1 = GlobalKey<FormState>();
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo app"),
      ),
      body: Provider(
        create: (context) => Page4CurrencyConverterStore(),
        child: Builder(
          builder: (BuildContext context) {
            Page4CurrencyConverterStore page4CurrencyConverterStore = Provider.of<Page4CurrencyConverterStore>(context);
            // page3ApiStore.getData();
            return Observer(
              builder: (_) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<String>(
                        hint: Text("Select item"),
                        value: page4CurrencyConverterStore.fromCurrency,
                        onChanged: (String value) {
                          page4CurrencyConverterStore.updateFromCurrency(value);
                        },
                        items: users.map((String user) {
                          return DropdownMenuItem<String>(
                            value: user,
                            child: Text(
                              user,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DropdownButton<String>(
                        hint: Text("Select item"),
                        value: page4CurrencyConverterStore.toCurrency,
                        onChanged: (String value) {
                          page4CurrencyConverterStore.updateToCurrency(value);
                        },
                        items: users.map((String user) {
                          return DropdownMenuItem<String>(
                            value: user,
                            child: Text(
                              user,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 250,
                    child: Form(
                      key: formKey1,
                      child: TextFormField(
                        controller: myController,
                        maxLines: 1,
                        autofocus: false,
                        // initialValue: "",
                        decoration: InputDecoration(
                          labelText: "Enter Value",
                          // isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            // height: 0.4,
                            fontWeight: FontWeight.w500,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black45,
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.5,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.5,
                            ),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          // letterSpacing: 0.5,
                          height: 1,
                          color: Colors.black,
                          // backgroundColor: Colors.white.withOpacity(0.2)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RaisedButton(
                     onPressed: () {
                      page4CurrencyConverterStore.inputValue = double.parse(myController.text);
                      //  print(page4CurrencyConverterStore.inputValue);
                      page4CurrencyConverterStore.getData();
                    },
                    child: Text("Convert"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text("Converted Value is :- "),
                  SizedBox(
                    height: 16,
                  ),
                  Text(page4CurrencyConverterStore.outputValue),
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
                            Navigator.popUntil(context,
                                ModalRoute.withName(Page1Counter.routeName));
                          },
                          elevation: 2.0,
                          fillColor: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.home,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
