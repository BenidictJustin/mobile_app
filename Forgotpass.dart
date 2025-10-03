import 'package:flutter/material.dart';
import 'package:beni_app/Login.dart';
import 'package:beni_app/Resetpass.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  static const String id = 'ForgotPass'; // Optional: For named routes

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E9), // light background similar to your image
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Circular icon
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue.shade100,
                child: const Icon(Icons.person, size: 50, color: Colors.white),
              ),

              const SizedBox(height: 20),

              // Title
              const Text(
                'Forgot\nPassword',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),

              const SizedBox(height: 30),

              // Email TextField
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              // Reset password button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ResetPass.id);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Reset password',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Back to login
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Login.id);
                },
                child: const Text(
                  'Back to login',
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
