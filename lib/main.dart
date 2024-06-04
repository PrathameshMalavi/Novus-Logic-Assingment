// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/rockets_viewmodel.dart';
import 'views/rocket_list_screen.dart';
import 'views/rocket_details_screen.dart';
import 'models/rocket.dart';
import 'views/about_developer_screen.dart';
import 'views/about_spacex_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RocketsViewModel()..fetchRockets(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SpaceX Rockets',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => RocketListScreen(),
          '/details': (context) => RocketDetailsScreen(
            rocket: ModalRoute.of(context)!.settings.arguments as Rocket,
          ),
          '/about': (context) => AboutDeveloperScreen(),
          '/about_spacex': (context) => AboutSpaceXScreen(),
        },
      ),
    );
  }
}
