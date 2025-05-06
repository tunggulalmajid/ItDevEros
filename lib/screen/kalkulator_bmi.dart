import 'package:belajarflutter1/widgets/button.dart';
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class KalkulatorBmi extends StatefulWidget {
  @override
  State<KalkulatorBmi> createState() => _KalkulatorBmiState();
}

class _KalkulatorBmiState extends State<KalkulatorBmi> {
  final TextEditingController _tinggiBadan = TextEditingController();
  final TextEditingController _beratBadan = TextEditingController();
  double hasilBmi = 0;
  String textBmi = '';
  String keteranganBmi = '';

  void hitungBmi() {
    double tinggiBadan = double.parse(_tinggiBadan.text) * 0.01;
    double beratBadan = double.parse(_beratBadan.text);
    setState(() {
      hasilBmi = beratBadan / (tinggiBadan * tinggiBadan);

      textBmi = hasilBmi.toStringAsFixed(2);
    });
  }

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
          children: [
            Container(
              margin: EdgeInsets.all(12),
              width: 500,
              height: 450,
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
                    child: Column(
                      children: [
                        Text(
                          "Kalkulator BMI",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tinggi Badan : ',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextField(
                              controller: _tinggiBadan,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              decoration: InputDecoration(
                                hintText: 'tinggi badan (cm)',
                                hintStyle: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Berat Badan : ',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextField(
                              controller: _beratBadan,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Berat badan (Kg)',
                                hintStyle: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            hitungBmi();
                          },
                          child: ButtonKalkulasi(),
                        ),
                        SizedBox(height: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Hasil Perhitungan",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              textBmi,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Keterangan : ",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
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
