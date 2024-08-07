import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'monument_detail.dart';

class MonumentCard extends StatelessWidget {
  final Map<String, dynamic> monument;

  MonumentCard(this.monument);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MonumentDetail(monument)),
          );
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFB9848C),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Image.network(monument['image'],
                  width: 100, height: 100, fit: BoxFit.cover),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  monument['name'],
                  style: GoogleFonts.numans(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                'Distance: ${monument['distance']} km',
                style: GoogleFonts.numans(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
