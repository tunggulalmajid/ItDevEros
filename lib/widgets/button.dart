import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonKalkulasi extends StatelessWidget {
  const ButtonKalkulasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFD1221F),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.white, width: 1),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.3), // warna bayangan`
            spreadRadius: 2, // seberapa luas bayangan
            blurRadius: 5, // seberapa blur bayangan
            offset: Offset(0, 10), // posisi bayangan (x, y)
          ),
        ],
      ),
      child: Center(
        child: Text(
          "Kalkulasi",
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
