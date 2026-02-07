import 'package:flutter/material.dart';
import 'package:propower/splash/splashscreen.dart';

// -----------------------------------------------------------------------------
void main() {
  runApp(PowerPro());
}

// -----------------------------------------------------------------------------
class PowerPro extends StatelessWidget {
  const PowerPro({super.key});

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
