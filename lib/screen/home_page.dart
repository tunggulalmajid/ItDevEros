import 'package:belajarflutter1/widgets/navbar.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Navbar(height: 200),
      ),
      bottomNavigationBar: BottomNav(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/kalkulatorkalori');
                        },
                        child: Container(
                          height: 150,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFF73B4D6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/logokalori.png',
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Hitung Kalorimu',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    // fontFamily: ,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/kalkulatorbmi');
                        },
                        child: Container(
                          height: 150,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFFCEEE10),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/logobmi.png',
                                  fit: BoxFit.cover,
                                  width: 60,
                                  height: 60,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Hitung BMI',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    // fontFamily: ,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/jadwalmakanan');
                        },
                        child: Container(
                          height: 150,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFFFF6324),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/logojadwalmakan.png',
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Jadwal Makanan',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    // fontFamily: ,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 15),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/monitoringkalori');
                        },
                        child: Container(
                          height: 150,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFFFACE53),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/logomonitoring.png',
                                  fit: BoxFit.fill,
                                  width: 55,
                                  height: 70,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Monitoring Kalori',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    // fontFamily: ,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/referensimakanan');
                    },
                    child: Container(
                      height: 150,
                      width: 370,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        color: const Color(0xFFFF69E1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/logomakanan.png',
                              fit: BoxFit.fill,
                              width: 65,
                              height: 65,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Referensi Makanan',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                // fontFamily: ,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Navbar
        ],
      ),
    );
  }
}
