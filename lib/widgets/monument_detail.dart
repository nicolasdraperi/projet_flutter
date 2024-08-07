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
        backgroundColor: Color(0xFF2F70AF),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(monument['image']),
            SizedBox(height: 16),
            Text(
              monument['name'],
              style: GoogleFonts.firaSans(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              monument['description'],
              style: GoogleFonts.numans(),
            ),
            SizedBox(height: 8),
            Text(
              'Distance: ${monument['distance']} km',
              style: GoogleFonts.numans(),
            ),
            SizedBox(height: 16),
            // on va dire qui y a une API google maps quelque part qu'on pourrait foutre ici?
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(child: Text('gougar map')),
            ),
            SizedBox(height: 16),
            Text(
              'User Reviews',
              style: GoogleFonts.firaSans(
                textStyle: TextStyle(
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
