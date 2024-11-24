import 'package:flutter/material.dart';
import 'package:tap2024b/screens/challenge_screen.dart';
import 'package:tap2024b/screens/dashboard_screen.dart';
import 'package:tap2024b/screens/detail_popular.dart';
import 'package:tap2024b/screens/popular_screen.dart';
import 'package:tap2024b/settings/global_values.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GlobalValues.banThemeDark,
      builder: (BuildContext context, value, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          title: 'Material App',
          routes: {
            "/dash":(context) => DashboardScreen(),
            "/challenge":(context) => ChallengeScreen(),
            "/movies":(context) => PopularScreen(),
            "/detail":(context) => DetailPopular(),

          },
            home: const DashboardScreen()
        );
      },
    );
  }
}

