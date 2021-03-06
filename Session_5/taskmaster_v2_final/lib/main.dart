import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/task_display_page.dart';
import 'screens/task_input_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: kAppBarBackgroundColor,
        ),
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        primaryColor: kPrimaryColor,
        primaryColorLight: kPrimaryColorLight,
        accentColor: kAccentColor,
        errorColor: kErrorColor,
        inputDecorationTheme: kInputDecoration,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TaskDisplayPage(),
        '/addTask': (context) => TaskInputPage(),
      },
    ),
  );
}
