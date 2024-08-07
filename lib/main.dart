import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/header.dart';
import 'widgets/monument_card.dart';
import 'monuments/tour_eiffel.dart';

void main() {
  runApp(TourismApp());
}

class TourismApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mista Worldwide',
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

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> monuments = [
    TourEiffel.data,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Header(),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: monuments.map((monument) => MonumentCard(monument)).toList(),
      ),
    );
  }
}
