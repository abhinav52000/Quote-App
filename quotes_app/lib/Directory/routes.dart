import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/mainscreen.dart';
import 'package:quotes_app/Screens/search_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MainScreen.id:
      return MaterialPageRoute(
        builder: (context) => const MainScreen(),
      );
    case SearchPage.id:
      final apitype = settings.arguments as int;
      return MaterialPageRoute(
        builder: (context) => SearchPage(apitype: apitype),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Text('This page doesn\'t exist'),
        ),
      );
  }
}
