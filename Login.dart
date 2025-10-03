import 'package:flutter/material.dart';
import 'homepage.dart';
import 'Signup.dart';
import 'Forgotpass.dart';

class Login extends StatelessWidget {
  static const String id = 'Login';
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.account_circle, color: Colors.blue, size: 100),
            const SizedBox(height: 20),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Homepage.id);
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
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Signup.id);
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPass.id);
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
