import 'package:flutter/material.dart';
import 'package:property_app_ui/screens/home_bottom_bar.dart';
import 'package:property_app_ui/utils/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppAssets.primaryColor,
      ),
      darkTheme: ThemeData(
        primaryColor: AppAssets.primaryColor,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(43, 43, 43, 1),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(43, 43, 43, 1),
        ),
      ),
      home: const HomeBottomBar(),
    );
  }
}
