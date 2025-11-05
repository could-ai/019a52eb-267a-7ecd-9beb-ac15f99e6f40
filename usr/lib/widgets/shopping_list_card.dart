import 'package:flutter/material.dart';

class ShoppingListCard extends StatefulWidget {
  const ShoppingListCard({super.key});

  @override
  State<ShoppingListCard> createState() => _ShoppingListCardState();
}

class _ShoppingListCardState extends State<ShoppingListCard> {
  // TODO: Implement state logic for shopping list
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shopping List',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Add item',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Cost (CUP)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
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
            const Text('Total: 0 CUP'),
            const Text('Budget: 4000 CUP'),
            // TODO: Add ListView for items
          ],
        ),
      ),
    );
  }
}
