import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/back_icon.dart';
import '../widgets/button.dart';

class KalkulatorKalori extends StatefulWidget {
  @override
  State<KalkulatorKalori> createState() => _KalkulatorKaloriState();
}

class _KalkulatorKaloriState extends State<KalkulatorKalori> {
  final TextEditingController _controllerTinggiBadan = TextEditingController();
  final TextEditingController _controllerBeratBadan = TextEditingController();
  final TextEditingController _controllerUsia = TextEditingController();
  String? _gender = "";
  String? _aktivitasHarian = "";
  double nilaiKalori = 0;
  String? saran = "";

  double hitungBmr() {
    double nilaiBmr =
        (10 * double.parse(_controllerBeratBadan.text)) +
        (6.25 * double.parse(_controllerTinggiBadan.text)) -
        (5 * double.parse(_controllerUsia.text));

    if (_gender == "Pria") {
      return nilaiBmr = nilaiBmr + 5;
    } else {
      return nilaiBmr = nilaiBmr - 161;
    }
  }

  void totalKalori() {
    nilaiKalori = hitungBmr();
    if (_aktivitasHarian == "Pasif") {
      nilaiKalori = nilaiKalori * 1.2;
    } else if (_aktivitasHarian == "Sedang") {
      nilaiKalori = nilaiKalori * 1.55;
    } else {
      nilaiKalori = nilaiKalori * 1.725;
    }
    setState(() {
      nilaiKalori = nilaiKalori.floorToDouble();
      saran =
          "Hasil Perhitungan ini hanyalah sebuah perkiraan dari kebutuhan kalori harian. Jika ingin mengurangi berat badan maka lakukan defisit kalori harian dengan cara mengonsumsi kalori kurang dari hasil kalkulasi dan jika sebaliknya, maka lakukan surplus kalori dengan cara mengonsumsi kalori lebih tinggi dari hasil kalkulasi";
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BackButtonCustom(),
            Container(
              margin: EdgeInsets.all(12),
              width: 500,
              height: 690,
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
                          "Kalkulator Kalori",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Usia : ',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextField(
                              controller: _controllerUsia,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Usia',
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
                              'Tinggi Badan : ',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextField(
                              controller: _controllerTinggiBadan,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Tinggi Badan (cm)',
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
                              controller: _controllerBeratBadan,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Berat Badan (Kg)',
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jenis Kelamin : ",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ListTile(
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              title: Text(
                                'Pria',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              leading: Radio<String>(
                                activeColor: Colors.amberAccent,
                                value: 'Pria',
                                groupValue: _gender,
                                fillColor: MaterialStateProperty.resolveWith<
                                  Color
                                >((states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.red; // Warna saat dipilih
                                  }
                                  return Colors
                                      .white; // Warna saat tidak dipilih
                                }),
                                onChanged: (value) {
                                  setState(() {
                                    _gender = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              title: Text(
                                'Wanita',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              leading: Radio<String>(
                                activeColor: Colors.amberAccent,
                                value: 'Wanita',
                                groupValue: _gender,
                                fillColor: MaterialStateProperty.resolveWith<
                                  Color
                                >((states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.red; // Warna saat dipilih
                                  }
                                  return Colors
                                      .white; // Warna saat tidak dipilih
                                }),
                                onChanged: (value) {
                                  setState(() {
                                    _gender = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Aktivitas Harian",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              title: Text(
                                'Pasif',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              leading: Radio<String>(
                                activeColor: Colors.amberAccent,
                                value: 'Pasif',
                                groupValue: _aktivitasHarian,
                                fillColor: MaterialStateProperty.resolveWith<
                                  Color
                                >((states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.red; // Warna saat dipilih
                                  }
                                  return Colors
                                      .white; // Warna saat tidak dipilih
                                }),
                                onChanged: (value) {
                                  setState(() {
                                    _aktivitasHarian = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              title: Text(
                                'Sedang',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              leading: Radio<String>(
                                activeColor: Colors.amberAccent,
                                value: 'Sedang',
                                groupValue: _aktivitasHarian,
                                fillColor: MaterialStateProperty.resolveWith<
                                  Color
                                >((states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.red; // Warna saat dipilih
                                  }
                                  return Colors
                                      .white; // Warna saat tidak dipilih
                                }),
                                onChanged: (value) {
                                  setState(() {
                                    _aktivitasHarian = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              title: Text(
                                'Aktif',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              leading: Radio<String>(
                                activeColor: Colors.amberAccent,
                                value: 'Aktif',
                                groupValue: _aktivitasHarian,
                                fillColor: MaterialStateProperty.resolveWith<
                                  Color
                                >((states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.red; // Warna saat dipilih
                                  }
                                  return Colors
                                      .white; // Warna saat tidak dipilih
                                }),
                                onChanged: (value) {
                                  setState(() {
                                    _aktivitasHarian = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            totalKalori();
                          },
                          child: ButtonKalkulasi(),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: 500,
              height: 300,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hasil Kalkulasi",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "$nilaiKalori",
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Wrap(
                      children: [
                        Text(
                          "$saran",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
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
