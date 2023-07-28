import 'package:flutter/material.dart';

class CompositeNavigationBarWidget extends StatelessWidget {
  const CompositeNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart),
          label: "Graphics",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: "Users",
        ),
      ],
    );
  }
}
