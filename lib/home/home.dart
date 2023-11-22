import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/home/shared_home/community_hub.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  void updateIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  List<Widget> screensList = [
    const CommunityHub(),
    const Text('screen'),
    const Text('screen'),
    const Text('screen'),
    const Text('screen'),
  ];

  List<NavigationDestination> navDestinations = const [
    NavigationDestination(
      selectedIcon: Icon(Icons.emoji_food_beverage_outlined),
      icon: Icon(Icons.emoji_food_beverage_outlined),
      label: 'Bulletin',
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.emoji_food_beverage_outlined),
      icon: Icon(Icons.business),
      label: 'Directory',
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.add_outlined),
      icon: Icon(Icons.add_outlined),
      label: 'Add Event',
    ),
    NavigationDestination(
      selectedIcon: Icon(Icons.chat_bubble_outlined),
      icon: Icon(Icons.chat_bubble_outlined),
      label: 'Messages',
    ),
    NavigationDestination(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[currentIndex],
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        selectedIndex: currentIndex,
        destinations: navDestinations,
        onDestinationSelected: updateIndex,
        indicatorColor: greenColor,
      ),
    );
  }
}
