import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Color(0xFF2F70AF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
              'https://s.yimg.com/ny/api/res/1.2/SfgsPpifZvFfwCpj8RAo0Q--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MA--/https://media.zenfs.com/en-US/theblast_73/ecec447fa62058fdda0557dd74445c54',
              height: 50),
          Text(
            'Mista Worldwide',
            style: GoogleFonts.firaSans(
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
              width: 50), //bout de code a l'arrache pour le spacing lol mdr
        ],
      ),
    );
  }
}
