import 'package:flutter/material.dart';

class MenuKalkulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
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
              child: Image.asset(
                'assets/LogoHealth.png',
                width: 100,
                height: 100,
              ),
            ),
          ),

          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/kalkulatorkalori');
                      },
                      child: Container(
                        height: 100,
                        width: 375,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.red.shade400,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Kalori',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/kalkulatorkalori');
                      },
                      child: Container(
                        height: 100,
                        width: 375,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.red.shade400,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Kalori',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
                ), IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(Icons.home_filled, color: Colors.white),
                ), IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/monitoringkalori');
                  },
                  icon: Icon(Icons.monitor_heart, color: Colors.white),
                ), IconButton(
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
