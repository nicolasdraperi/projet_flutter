import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'user_review.dart';
import 'package:projet_flutter/widgets/custom_bottom_navigation_bar.dart';

class MonumentDetail extends StatelessWidget {
  final Map<String, dynamic> monument;
  final int _currentIndex = 0;

  MonumentDetail(this.monument);

  void _onTabTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          monument['name'],
          style: GoogleFonts.firaSans(),
        ),
        backgroundColor: const Color(0xFF2F70AF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth,
                height: 200,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.network(
                    monument['image'],
                    width: screenWidth,
                    height: 200,
                  ),
                ),
              ),
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
              // API google maps à implémenter
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: const Center(child: Text('Google Map')),
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
              // samples de revues utilisateurs
              UserReview(
                profileImageUrl: 'https://example.com/profile1.jpg',
                userName: 'Jean Muller',
                rating: 4.5,
                reviewText:
                    'la tour eiffel, waouh! le vue est à couper le souffle.',
              ),
              UserReview(
                profileImageUrl: 'https://example.com/profile2.jpg',
                userName: 'Victor Lepeureu',
                rating: 2.0,
                reviewText:
                    "c'était sympa mais il y avait beaucoup trop de monde",
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF806491),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                  ),
                  child: Text(
                    "Je laisse mon avis!",
                    style: GoogleFonts.numans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
