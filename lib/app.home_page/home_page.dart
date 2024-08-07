import 'package:flutter/material.dart';
import 'package:projet_flutter/common_widget/custom_app_bar.dart';
import 'package:projet_flutter/common_widget/custom_bottom_navigation_bar.dart';
import 'activity_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> _pageTitles = ['Activités', 'Mon Compte', 'Paramètres'];
  final List<Widget> _pages = [
    ActivityListPage(),
    AccountPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: _pageTitles[_selectedIndex]),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ActivityListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final activities = [
      ActivityCard(
        imageUrl: 'https://via.placeholder.com/200',
        name: 'Visite du Louvre',
        location: 'Paris, France',
        description: 'Découvrez les merveilles du Louvre.',
        price: '20€',
      ),
      ActivityCard(
        imageUrl: 'https://via.placeholder.com/200',
        name: 'Tour Eiffel',
        location: 'Paris, France',
        description: 'Montez au sommet de la Tour Eiffel.',
        price: '15€',
      ),
      // Ajoutez d'autres activités ici
    ];

    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return activities[index];
      },
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Mon Compte'),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Paramètres'),
    );
  }
}

void main() => runApp(MaterialApp(home: HomePage()));
