import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FullienWear',
      theme: isDarkMode ? darkTheme() : lightTheme(),
      home: HomeScreen(onThemeChange: toggleTheme),
    );
  }

  ThemeData lightTheme() {
    return ThemeData(
      primarySwatch: Colors.grey,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.grey,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      cardColor: Colors.white,
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF121212),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1F1F1F),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      cardColor: const Color(0xFF1F1F1F),
    );
  }

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }
}
