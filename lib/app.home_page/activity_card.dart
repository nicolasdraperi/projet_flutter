import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String description;
  final String price;

  const ActivityCard({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      color: Color(0xFF2F70AF), // Background color of the card
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF806491), // Primary color
              ),
            ),
            Text(
              location,
              style: TextStyle(
                color: Color(0xFFB9848C), // Secondary color
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                color: Color(0xFF806491), // Primary color
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    color: Color(0xFFB9848C), // Secondary color
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Action pour le bouton de réservation
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF806491), // Button color
                  ),
                  child: Text('Réserver'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
