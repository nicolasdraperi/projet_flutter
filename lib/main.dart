import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projet_flutter/widgets/custom_bottom_navigation_bar.dart';
import 'widgets/header.dart';
import 'widgets/monument_card.dart';
import 'monuments/monument_data.dart';

void main() {
  runApp(TourismApp());
}

class TourismApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parisplore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.numans(),
        ),
      ),
      home: HomePage(),
    );
  }
}

//Importer les monuments en haut du code, et dans la classe Homepage ci-dessous avec la méthode "lorem.data,"

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> monuments = [
    TourEiffel.data,
    Louvre.data,
  ];

  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Header(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: monuments.map((monument) => MonumentCard(monument)).toList(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
