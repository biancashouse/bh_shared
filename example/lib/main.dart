
import 'package:bh_shared/bh_shared.dart';
import 'package:flutter/material.dart';
import 'package:home_page_provider/home_page_provider.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await base.initLocalStorage();

  /// demonstrate using the local storage mixin
  await base.gotit('aggie');
  await base.gotit('daisie');
  await base.gotit('blossie');
  /// end of local storage demo

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bh_shared pkg Demo',
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
