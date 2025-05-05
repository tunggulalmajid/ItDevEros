import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class KalkulatorKalori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Navbar(height: 200),
      ),
      bottomNavigationBar: BottomNav(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(12),
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(12),
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.8,
                  colors: [Color(0xFFEE3343), Color(0xFF881D26)],
                  stops: [0.0, 1.0],
                ), // warna merah
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromRGBO(0, 0, 0, 0.3),
                    spreadRadius: 2,
                    blurRadius: 5, // seberapa blur bayangan
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kalkulator Kalori",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
