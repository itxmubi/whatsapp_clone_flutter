import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/all_chats.dart';

import 'status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    const AllChatsScreen(),
    const StatusScreen(),
    const AllChatsScreen(),
    const AllChatsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          elevation: 2,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chats",
              activeIcon: (Icon(Icons.chat)),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Updates"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Communities"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Calls"),
          ]),
    );
  }
}
