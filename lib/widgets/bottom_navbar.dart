import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 19),
      height: 50,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.8,
          colors: [Color(0xFFEE3343), Color(0xFF881D26)],
          stops: [0.1, 0.1],
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
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
    );
  }
}
