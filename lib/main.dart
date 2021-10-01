import 'package:bloom/bloom_theme_data.dart';
import 'package:bloom/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloom',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: BloomThemeData.lightThemeData,
      darkTheme: BloomThemeData.darkThemeData,
      home: const LoginPage(),
    );
  }
}
