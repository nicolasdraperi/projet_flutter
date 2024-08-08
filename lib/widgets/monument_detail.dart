import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonumentDetail extends StatelessWidget {
  final Map<String, dynamic> monument;

  MonumentDetail(this.monument);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          monument['name'],
          style: GoogleFonts.firaSans(),
        ),
        backgroundColor: const Color(0xFF2F70AF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(monument['image']),
            const SizedBox(height: 16),
            Text(
              monument['name'],
              style: GoogleFonts.firaSans(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              monument['description'],
              style: GoogleFonts.numans(),
            ),
            const SizedBox(height: 8),
            Text(
              'Distance: ${monument['distance']} km',
              style: GoogleFonts.numans(),
            ),
            const SizedBox(height: 16),
            // on va dire qui y a une API google maps quelque part qu'on pourrait foutre ici?
            Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(child: Text('google map')),
            ),
            const SizedBox(height: 16),
            Text(
              'User Reviews',
              style: GoogleFonts.firaSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: GoogleFonts.numans(),
            ),
          ],
        ),
      ),
    );
  }
}
