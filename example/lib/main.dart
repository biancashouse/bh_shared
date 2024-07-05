import 'package:bh_shared/bh_shared.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePageProvider()
          .getWebOrMobileHomePage(const HomePageWeb(), const HomePageMobile()),
    );
  }
}

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Text('Welcome to the Web Home Page',
          textScaler: TextScaler.linear(3.0)),
    );
  }
}

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Text('Welcome to the Mobile Home Page',
          textScaler: TextScaler.linear(3.0)),
    );
  }
}
