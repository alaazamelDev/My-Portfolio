import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/configs/theme.dart';
import 'package:my_personal_portfolio/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alaa Aldeen Zamel',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.light,
      home: const MainPage(),
    );
  }
}
