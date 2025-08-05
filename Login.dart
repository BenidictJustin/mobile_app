import 'package:beni_app/Signup.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class Login extends StatelessWidget {
  static const String id = 'Login';
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Set background color to white
        body: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center everything vertically
            children: [
              const Icon(Icons.account_circle, color: Colors.blue, size: 100),
              const SizedBox(height: 20),
              const Text(
                'Login',
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
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 255)),
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
              // Centering the button
              SizedBox(
                width: double
                    .infinity, // Make the button take the full width of the parent
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return Homepage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text('Sign up'), Text('Forgot password?')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
