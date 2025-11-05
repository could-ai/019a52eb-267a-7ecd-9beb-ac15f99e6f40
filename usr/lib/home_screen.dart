import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/calendar_card.dart';
import 'package:couldai_user_app/widgets/mood_tracker_card.dart';
import 'package:couldai_user_app/widgets/pet_corner_card.dart';
import 'package:couldai_user_app/widgets/pomodoro_card.dart';
import 'package:couldai_user_app/widgets/self_care_card.dart';
import 'package:couldai_user_app/widgets/shopping_list_card.dart';
import 'package:couldai_user_app/widgets/todo_card.dart';
import 'package:couldai_user_app/widgets/water_tracker_card.dart';
import 'package:couldai_user_app/widgets/weather_card.dart';
import 'package:couldai_user_app/widgets/wishlist_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> greetings = [
    "Good morning, Ari 🌸",
    "Hello, lovely Ari 💖",
    "Have a cozy day, Ari ☕",
    "Ari, you got this! 🌈"
  ];
  late String _greeting;

  @override
  void initState() {
    super.initState();
    _greeting = (greetings..shuffle()).first;
  }

  @override
  Widget build(BuildContext context) {
    // In a real app, this order would be user-configurable
    final List<Widget> trackerCards = [
      const MoodTrackerCard(),
      const ShoppingListCard(),
      const WishlistCard(),
      const ToDoCard(),
      const CalendarCard(),
      const PomodoroCard(),
      const WaterTrackerCard(),
      const PetCornerCard(),
      const WeatherCard(),
      const SelfCareCard(),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            centerTitle: true,
            title: Text(
              _greeting,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // TODO: Add Settings Icon Button
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: trackerCards[index],
                  );
                },
                childCount: trackerCards.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
