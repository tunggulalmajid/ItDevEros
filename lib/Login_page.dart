import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
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
            child: Container(
              color: Colors.grey[200], // abu-abu terang
              child: Center(
                child: Text(
                  'Ini Halaman Login',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
