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
  int selectIndex = 1;

  final List<Widget> pages = [HomeScreen(), Diary(), Weather(), Alarm()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BENI APP')),
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange[200],
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
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
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:
            MainAxisAlignment.center, // Centers the content vertically
        children: [
          //const SizedBox(height: 20),
          const Text(
            'Hi, Benidict! 👋',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'What would you like to do today?',
            style: TextStyle(fontSize: 18, color: Colors.black45),
          ),
          const SizedBox(height: 20),
          // Ensure feature cards have a fixed height
          FeatureCard(
            icon: Icons.note,
            title: 'Diary',
            description: 'Write your thoughts',
            onTap: () {
              // Handle navigation to Diary screen
            },
          ),
          const SizedBox(height: 20),
          FeatureCard(
            icon: Icons.cloud,
            title: 'Weather',
            description: 'Check local weather',
            onTap: () {
              // Handle navigation to Weather screen
            },
          ),
          const SizedBox(height: 20),
          FeatureCard(
            icon: Icons.alarm,
            title: 'Alarm',
            description: 'Set your alarm',
            onTap: () {
              // Handle navigation to Alarm screen
            },
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.brown[600]),
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: Colors.brown[600]),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.brown[400]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
