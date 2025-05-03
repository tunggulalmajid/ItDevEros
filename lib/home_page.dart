import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 270,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.8,
                colors: [Color(0xFFEE3343), Color(0xFF881D26)],
                stops: [0.0, 1.0],
              ), // warna merah
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/HeroCewe.png', width: 100, height: 100),
                  Image.asset('assets/LogoHealth.png', width: 100, height: 100),
                  Image.asset('assets/HeroCowo.png', width: 100, height: 100),
                ],
              ),
            ),
          ),

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
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFF73B4D6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/logokalori.png',
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
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
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFFCEEE10),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/logobmi.png',
                                  fit: BoxFit.cover,
                                  width: 60,
                                  height: 60,
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
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFFFF6324),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/logojadwalmakan.png',
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
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
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color: const Color(0xFFFACE53),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/logomonitoring.png',
                              fit: BoxFit.fill,
                              width: 45,
                              height: 60,
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
                      height: 100,
                      width: 370,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        color: const Color(0xFFFF69E1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/logomakanan.png',
                          fit: BoxFit.fill,
                          width: 75,
                          height: 75,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Navbar
          Container(
            height: 60,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.8,
                colors: [Color(0xFFEE3343), Color(0xFF881D26)],
                stops: [0.1, 0.1],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menukalkulator');
                  },
                  icon: Icon(Icons.calculate_rounded, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/jadwalmakanan');
                  },
                  icon: Icon(Icons.calendar_month_rounded, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(Icons.home_filled, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/monitoringkalori');
                  },
                  icon: Icon(Icons.monitor_heart, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/referensimakanan');
                  },
                  icon: Icon(Icons.receipt_rounded, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
