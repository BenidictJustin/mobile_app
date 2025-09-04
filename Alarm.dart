import 'package:flutter/material.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  bool alarmRepetition = true;
  List<bool> selectedDays = [true, true, true, true, true, false, false]; // M-S

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2C89D),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Time Display
                const Text(
                  '08:30',
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(height: 30),

                // Alarm Repetition toggle
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Alarm Repetition',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Switch(
                      activeColor: Colors.brown,
                      value: alarmRepetition,
                      onChanged: (val) {
                        setState(() {
                          alarmRepetition = val;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Days selection
                ToggleButtons(
                  borderRadius: BorderRadius.circular(12),
                  fillColor: Colors.brown.withOpacity(0.5),
                  selectedColor: Colors.white,
                  color: Colors.brown,
                  selectedBorderColor: Colors.brown,
                  borderColor: Colors.brown.withOpacity(0.5),
                  constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
                  isSelected: selectedDays,
                  onPressed: (index) {
                    setState(() {
                      selectedDays[index] = !selectedDays[index];
                    });
                  },
                  children: const [
                    Text('M', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('T', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('W', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('T', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('F', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('S', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('S', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),

                // Save button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Add save functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
