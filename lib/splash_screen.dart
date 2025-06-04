import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_adviser_client_app/screens/home_dshboard_screen.dart';

import 'screens/onboarding_screen.dart';
import 'services/preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateBasedOnState();
  }

  Future<void> _navigateBasedOnState() async {
    await Future.delayed(const Duration(seconds: 2)); // splash delay

    final seenOnboarding = await AppPreferences.hasSeenOnboarding();
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Authenticated user
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => const HomeDashboardScreen(isGuest: true)),
      );
    } else if (seenOnboarding) {
      // Guest user
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => const HomeDashboardScreen(isGuest: true)),
      );
    } else {
      // First-time user
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => const HomeDashboardScreen(isGuest: true)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // or splash branding
      ),
    );
  }
}
