import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Life Tracker'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: const [
          CategoryCard(title: 'Mood', icon: Icons.sentiment_very_satisfied),
          CategoryCard(title: 'Sleep', icon: Icons.bedtime),
          CategoryCard(title: 'Meals', icon: Icons.fastfood),
          CategoryCard(title: 'Activities', icon: Icons.directions_run),
          CategoryCard(title: 'Hydration', icon: Icons.local_drink),
          CategoryCard(title: 'Journal', icon: Icons.book),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          // TODO: Navigate to the specific tracking screen
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$title tapped!')),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50.0, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
