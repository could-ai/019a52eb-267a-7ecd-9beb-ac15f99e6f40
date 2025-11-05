import 'package:flutter/material.dart';

class WaterTrackerCard extends StatefulWidget {
  const WaterTrackerCard({super.key});

  @override
  State<WaterTrackerCard> createState() => _WaterTrackerCardState();
}

class _WaterTrackerCardState extends State<WaterTrackerCard> {
  int _cupCount = 0;

  void _addCup() {
    setState(() {
      _cupCount++;
    });
    // TODO: Play chime sound
  }

  void _resetCups() {
    setState(() {
      _cupCount = 0;
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
            Text('Water Tracker',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cups today: $_cupCount',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: _addCup, child: const Text('+')),
                    const SizedBox(width: 8),
                    TextButton(onPressed: _resetCups, child: const Text('Reset')),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
