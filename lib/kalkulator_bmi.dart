import 'package:flutter/material.dart';

class KalkulatorBmi extends StatelessWidget {
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
            child:Center(  
              child: Text("Kalkulator BMI"),
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
