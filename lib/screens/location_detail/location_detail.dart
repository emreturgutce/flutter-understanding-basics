import 'package:flutter/material.dart';
import 'package:hello_world/screens/location_detail/image_banner.dart';
import 'package:hello_world/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/kiyomizu-dera.jpg"),
            TextSection("summary", "one"),
            TextSection("summary", "two"),
            TextSection("summary", "three"),
          ],
        ));
  }
}
