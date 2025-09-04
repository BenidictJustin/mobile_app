import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2C89D), // Light brown background
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                'Weather',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(height: 40),

              // Weather Card
              Container(
                width: 250,
                padding: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.wb_sunny, size: 60, color: Colors.orangeAccent),
                    const SizedBox(height: 10),
                    const Text(
                      '72°',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Sunny',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // High and Low
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.brown,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '76°',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                'Low',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.brown,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '58°',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
