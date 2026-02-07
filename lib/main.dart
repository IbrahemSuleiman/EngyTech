import 'package:flutter/material.dart';
import '../splash/splashscreen.dart';

// -----------------------------------------------------------------------------
void main() {
  runApp(EngyTech());
}

// -----------------------------------------------------------------------------
class EngyTech extends StatelessWidget {
  const EngyTech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Power Pro',
      home: SplashScreen(),
    );
  }
}

// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
