import 'package:flutter/material.dart';
import 'package:beni_app/Login.dart'; // Adjust path as needed

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  static const String id = 'ResetPass'; // For named routing

  @override
  Widget build(BuildContext context) {
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF5), // soft cream background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lock icon
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue.shade100,
                child: const Icon(Icons.lock, size: 50, color: Colors.white),
              ),

              const SizedBox(height: 20),

              const Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 30),

              // New password field
              TextField(
                controller: newPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'New password',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Confirm password field
              TextField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm password',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Reset password button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final newPassword = newPasswordController.text;
                    final confirmPassword = confirmPasswordController.text;

                    if (newPassword.isEmpty || confirmPassword.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please fill in both fields')),
                      );
                    } else if (newPassword != confirmPassword) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Passwords do not match')),
                      );
                    } else {
                      // Password reset logic placeholder
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Password reset successful (UI only)')),
                      );

                      // Navigate to Login screen
                      Navigator.pushReplacementNamed(context, Login.id);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Reset Password',
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
                  '< Back to Login',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
