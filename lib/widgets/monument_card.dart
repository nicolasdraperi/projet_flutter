import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'monument_detail.dart';

class MonumentCard extends StatelessWidget {
  final Map<String, dynamic> monument;
  final double cardHeight;

  const MonumentCard(this.monument, this.cardHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        color:
            const Color(0xFF806491), //ptn flutter prends pas le héxadécimal???
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MonumentDetail(monument)),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      monument['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      monument['name'],
                      style: GoogleFonts.numans(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .white, // CHANGER LA COULEUR DU TEXTE SI ON CHANGE LE BACKGROUND!
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Distance: ${monument['distance']} km',
                      style: GoogleFonts.numans(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.white, // CHANGER LE TEXT ICI AUSSI!
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
