import 'package:auto_service_notes/screens/first_car_settings.dart';
import 'package:auto_service_notes/screens/gallery.dart';
import 'package:auto_service_notes/screens/mainscreen.dart';
import 'package:auto_service_notes/screens/servicecard.dart';
import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const AutoServiceApp());
}

class AutoServiceApp extends StatefulWidget {
  const AutoServiceApp({Key? key}) : super(key: key);

  @override
  State<AutoServiceApp> createState() => _AutoServiceAppState();
}

class _AutoServiceAppState extends State<AutoServiceApp> {
  @override
  Widget build(BuildContext context) {
    const title = 'Auto Service Notice';

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreenWidget(),
        '/card': (context) => const ServiceCardWidget(),
        '/gallery': (context) => const MyHomePage(),
        '/firstsettings': (context) => const SetSettingsWidget(),
      },
      theme: ThemeData(
          primaryColor: Colors.orange,
          textTheme:
              const TextTheme(bodyText1: TextStyle(color: Colors.black))),
      debugShowCheckedModeBanner: false,
      title: title,
    );
  }
}
