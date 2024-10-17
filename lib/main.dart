import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba_tecnica_popoyan/feature/characters/presenter/screens/characters_screen.dart';

import 'core/theme/theme.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CharacterScreen(),
    );
  }
}
