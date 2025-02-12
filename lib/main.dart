import 'package:flutter/material.dart';
import 'package:project_theme/pages/homepage.dart';
import 'package:project_theme/styles/themeprovider.dart';
import 'package:project_theme/theme_data_style.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark/Light',
      theme: Provider.of<ThemeProvider>(context).themeDataStyle,
      home: const HomePage(),
    );
  }
}