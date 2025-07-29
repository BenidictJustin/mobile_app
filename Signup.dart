import 'package:flutter/material.dart';

void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFE8CD), // Set background color to black
        body: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle,
                color: Color(0xFFFF7A30),
                size: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm password',
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                // Match the width of the TextField
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF7A30),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Already have an account?'),
            ],
          ),
        ),
      ),
    );
  }
}
