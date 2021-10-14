import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        shadowColor: Colors.white38,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: const Color.fromRGBO(249, 251, 255, 1),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: customBlue),
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: customBlue,
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
          actionsIconTheme: IconThemeData(
            color: customBlue,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFC8D4EE)),
        // primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark().copyWith(
          shadowColor: Colors.black38,
          primaryColor: Colors.black,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(229, 232, 249, .5)),
          floatingActionButtonTheme:
              const FloatingActionButtonThemeData(backgroundColor: Colors.grey)
          // primarySwatch:
          ),
      themeMode: ThemeMode.system,
      home: HomeView(),
    );
  }
}
