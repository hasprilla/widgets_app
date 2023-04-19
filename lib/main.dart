import 'package:flutter/material.dart';

import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(seletedColor: 0).getTheme(),
      routerConfig: appRouter,
      // home: const HomeScreen(),
      // routes: {
      //   '/buttons': (context) => const ButtonBar(),
      //   '/cards': (context) => const CardsScreen()
      // },
    );
  }
}
