import 'package:flutter/material.dart';

class PetCornerCard extends StatefulWidget {
  const PetCornerCard({super.key});

  @override
  State<PetCornerCard> createState() => _PetCornerCardState();
}

class _PetCornerCardState extends State<PetCornerCard> {
  String _petName = '';
  final _controller = TextEditingController();

  void _savePetName() {
    setState(() {
      _petName = _controller.text;
    });
    // TODO: Persist pet name
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pet Corner', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Pet name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: _savePetName,
                child: const Text('Save'),
              ),
            ),
            if (_petName.isNotEmpty) ...[
              const SizedBox(height: 10),
              Text(
                'Your pet: $_petName',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
