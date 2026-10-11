import 'package:flutter/material.dart';

void main() {
  runApp(const NurApp());
}

class NurApp extends StatelessWidget {
  const NurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NUR: Islamic Quiz & Trivia Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NUR: Islamic Knowledge'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: const [
                Icon(Icons.monetization_on, color: Colors.amber),
                SizedBox(width: 4),
                Text('100 Coins', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.menu_book_rounded, size: 80, color: Colors.teal),
              const SizedBox(height: 20),
              const Text(
                'NUR',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              const SizedBox(height: 8),
              const Text(
                'Enlighten your mind with Islamic knowledge',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow),
                label: const Text('Start Game', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.card_giftcard, color: Colors.amber),
                label: const Text('Watch Ad (+30 Coins)'),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
