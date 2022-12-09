import 'package:flutter/material.dart';
import 'package:quotes_app/Directory/routes.dart';
import 'package:quotes_app/Screens/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      initialRoute: MainScreen.id,
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
