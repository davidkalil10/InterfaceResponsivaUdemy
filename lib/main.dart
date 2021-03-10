import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:interface_udemy/pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(builder: (_)=> MyApp()));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
    );
  }
}

