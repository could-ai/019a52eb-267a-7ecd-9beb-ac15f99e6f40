import 'package:flutter/material.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({super.key});

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  // TODO: Implement state logic for calendar
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Calendar', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Event',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () async {
                      // TODO: Show date picker
                    },
                    icon: const Icon(Icons.calendar_today),
                    label: const Text('Select Date'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Add event logic
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // TODO: Add ListView for events
          ],
        ),
      ),
    );
  }
}
