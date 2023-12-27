import 'package:flutter/material.dart';
import 'package:nation_guide_etr/components/navigation_drawer.dart';
import 'package:nation_guide_etr/screens/home_screen.dart';
import 'package:nation_guide_etr/screens/profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const NationGuide());
}

class NationGuide extends StatelessWidget {
  const NationGuide({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.indigo,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
      ),
      home: NavDrawer(),
      
    );
  }
}