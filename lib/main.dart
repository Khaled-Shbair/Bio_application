import 'package:flutter/material.dart';
import 'screens/launch_screen.dart';
import 'screens/bio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LaunchScreen',
      routes: {
        '/LaunchScreen': (context) => const LaunchScreen(),
        '/BioScreen': (context) => BioScreen(),
      },
    );
  }
}
