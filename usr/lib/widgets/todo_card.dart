import 'package:flutter/material.dart';

class ToDoCard extends StatefulWidget {
  const ToDoCard({super.key});

  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  // TODO: Implement state logic for To-Do list
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('To-Do & Habits',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Add task',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Add item logic
                },
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 10),
            // TODO: Add ListView for items
          ],
        ),
      ),
    );
  }
}
