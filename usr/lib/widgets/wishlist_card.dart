import 'package:flutter/material.dart';

class WishlistCard extends StatefulWidget {
  const WishlistCard({super.key});

  @override
  State<WishlistCard> createState() => _WishlistCardState();
}

class _WishlistCardState extends State<WishlistCard> {
  // TODO: Implement state logic for wishlist
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wishlist', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Add item',
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
