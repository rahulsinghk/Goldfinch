
import 'package:flutter/material.dart';
import 'package:goldfinch/page1/page1_counter.dart';
import 'package:goldfinch/page2/page2_time.dart';
import 'package:goldfinch/page3/page3_api.dart';
import 'package:goldfinch/page4/page4_currency_converter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: TextTheme(
            headline2: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 96,
              letterSpacing: -1.5,
              fontFamily: "Montserrat",
            ),
            headline3: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 60,
              letterSpacing: -0.5,
              fontFamily: "Montserrat",
            ),
            headline4: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 48,
              letterSpacing: 0,
              fontFamily: "Montserrat",
            ),
            headline5: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 34,
              letterSpacing: 0.25,
              fontFamily: "Montserrat",
            ),
            subtitle1: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              letterSpacing: 0,
              fontFamily: "Montserrat",
            ),
            headline6: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: 0.15,
              fontFamily: "Montserrat",
            ),
            subtitle2: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              letterSpacing: 0.15,
              fontFamily: "Montserrat",
            ),
            bodyText2: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              letterSpacing: 0.5,
              fontFamily: "Nunito",
            ),
            bodyText1: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              letterSpacing: 0.25,
              fontFamily: "Nunito",
            ),
            button: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              letterSpacing: 1.25,
              fontFamily: "Nunito",
            ),
            caption: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              letterSpacing: 0.4,
              fontFamily: "Nunito",
            ),
            overline: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              letterSpacing: 1.5,
              fontFamily: "Montserrat",
            ),
          ),

          primaryColor: Color(0xFFCE2234),
          accentColor: Color(0xFFCF0E22),
          appBarTheme: AppBarTheme(
            elevation: 0,
          ),
          primarySwatch: Colors.pink,
        ),
      routes: {
          Page1Counter.routeName: (context) => Page1Counter(),
          Page2Time.routeName: (context) => Page2Time(),
          Page3Api.routeName: (context) => Page3Api(),
          Page4CurrencyConverter.routeName: (context) => Page4CurrencyConverter(),
        },
    );
  }
}
