import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.local_activity),
          label: 'Activités',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Mon Compte',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Paramètres',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFF2F70AF),
      unselectedItemColor: Colors.grey,
      onTap: onTap,
    );
  }
}
