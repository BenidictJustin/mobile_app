import 'package:beni_app/Alarm.dart';
import 'package:beni_app/Diary.dart';
import 'package:beni_app/Weather.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  static const String id = 'Homepage';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectIndex = 0; // HomeScreen index

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      HomeScreen(onFeatureSelected: onFeatureSelected),
      const Diary(),
      const Weather(),
      const Alarm(),
    ];
  }

  void onFeatureSelected(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BENI APP')),
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.orange),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        onTap: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Diary'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Weather'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
        ],
      ),

    );
  }
}

class HomeScreen extends StatelessWidget {
  final void Function(int) onFeatureSelected;

  const HomeScreen({super.key, required this.onFeatureSelected});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hi, Benidict! 👋',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'What would you like to do today?',
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
            const SizedBox(height: 30),

            FeatureButton(
              icon: Icons.note,
              title: 'Diary',
              description: 'Write your thoughts',
              onPressed: () {
                onFeatureSelected(1); // Switch to Diary tab
              },
            ),
            const SizedBox(height: 20),

            FeatureButton(
              icon: Icons.cloud,
              title: 'Weather',
              description: 'Check local weather',
              onPressed: () {
                onFeatureSelected(2); // Switch to Weather tab
              },
            ),
            const SizedBox(height: 20),

            FeatureButton(
              icon: Icons.alarm,
              title: 'Alarm',
              description: 'Set your alarm',
              onPressed: () {
                onFeatureSelected(3); // Switch to Alarm tab
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onPressed;

  const FeatureButton({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.brown[600],
          elevation: 5,
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: Colors.brown[600]),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.brown[600],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.brown[400],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
