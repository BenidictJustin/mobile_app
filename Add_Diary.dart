import 'package:flutter/material.dart';

// Import DiaryEntry from Diary.dart
import 'Diary.dart'; // Make sure path is correct

class AddDiary extends StatefulWidget {
  const AddDiary({super.key});

  @override
  State<AddDiary> createState() => _AddDiaryState();
}

class _AddDiaryState extends State<AddDiary> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2C89D), // Match the light brown background
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2C89D),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Diary',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 6),

            // Title input
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Content input
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  controller: _contentController,
                  maxLines: null,
                  expands: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write your diary here...',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Save Button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  final title = _titleController.text.trim();
                  final content = _contentController.text.trim();

                  if (title.isNotEmpty || content.isNotEmpty) {
                    // Return the diary entry to Diary.dart
                    final newEntry = DiaryEntry(title: title, content: content);
                    Navigator.pop(context, newEntry);
                  } else {
                    Navigator.pop(context); // Close without saving if empty
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.brown,
                  elevation: 1,
                ),
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
