import 'package:flutter/material.dart';
import 'package:hello_world/style.dart';
import 'screens/location_detail/location_detail.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LocationDetail(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            // ignore: deprecated_member_use
            title: AppBarTextStyle,
            // ignore: deprecated_member_use
            body1: Body1TextStyle,
          ),
        )));
  }
}
