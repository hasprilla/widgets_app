import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/cards/cards_screen.dart';
import 'presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(seletedColor: 0).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonBar(),
        '/cards': (context) => const CardsScreen()
      },
    );
  }
}
