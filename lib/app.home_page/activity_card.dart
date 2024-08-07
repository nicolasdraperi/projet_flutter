import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.location,
    required this.description,
    required this.price,
  });
  final String imageAsset;
  final String name;
  final String location;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: const Color(0xFF2F70AF),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageAsset,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF806491),
              ),
            ),
            Text(
              location,
              style: const TextStyle(
                color: Color(0xFFB9848C),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                color: Color(0xFF806491),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFFB9848C),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF806491), // Button color
                  ),
                  child: const Text('Réserver'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
