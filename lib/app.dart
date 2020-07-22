import 'package:flutter/material.dart';
import 'package:hello_world/screens/location_detail/location_detail.dart';
import 'package:hello_world/style.dart';
import 'screens/locations/locations.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: _routes(),
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

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;

      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (context) => screen);
    };
  }
}
