import 'package:flutter/material.dart';

class HomeDashboardScreen extends StatelessWidget {
  final bool isGuest;

  const HomeDashboardScreen({super.key, required this.isGuest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyAdvisr Dashboard"),
        actions: [
          if (!isGuest)
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Navigate to profile
              },
            )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildWelcomeMessage(),
            const SizedBox(height: 20),
            _buildHealthScoreGauge(),
            const SizedBox(height: 20),
            _buildFeatureButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        isGuest ? "Welcome, Guest 👋" : "Welcome back 👋",
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildHealthScoreGauge() {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          isGuest
              ? "Sign in to view your Financial Health Score"
              : "Your Financial Health Score: 72", // placeholder score
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildFeatureButtons(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.quiz),
          label: const Text("Take Financial Health Quiz"),
          onPressed: () {
            if (isGuest) {
              _promptLogin(context);
            } else {
              Navigator.pushNamed(context, '/quiz');
            }
          },
        ),
        const SizedBox(height: 12),
        ElevatedButton.icon(
          icon: const Icon(Icons.people),
          label: const Text("Find an Adviser"),
          onPressed: () {
            Navigator.pushNamed(context, '/advisers');
          },
        ),
      ],
    );
  }

  void _promptLogin(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Login Required"),
        content: const Text("Please log in to access this feature."),
        actions: [
          TextButton(
            child: const Text("Cancel"),
            onPressed: () => Navigator.pop(context),
          ),
          TextButton(
            child: const Text("Login"),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
