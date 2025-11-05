import 'package:flutter/material.dart';
import 'dart:math';

class SelfCareCard extends StatefulWidget {
  const SelfCareCard({super.key});

  @override
  State<SelfCareCard> createState() => _SelfCareCardState();
}

class _SelfCareCardState extends State<SelfCareCard> {
  final List<String> _selfCareIdeas = [
    "Take a warm bath 🛁",
    "Read a cozy book 📖",
    "Stretch for 5 minutes 🧘‍♀️",
    "Make your favorite tea 🍵",
    "Meditate for 10 min 🧘",
    "Listen to soft music 🎶"
  ];
  String _currentIdea = '';

  void _generateNewIdea() {
    setState(() {
      _currentIdea = _selfCareIdeas[Random().nextInt(_selfCareIdeas.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Self-care Ideas',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            if (_currentIdea.isNotEmpty)
              Text(
                _currentIdea,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: _generateNewIdea,
                child: const Text('Inspire me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
