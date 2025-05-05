import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key, required this.height});
  final int height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.3), // warna bayangan`
            spreadRadius: 2, // seberapa luas bayangan
            blurRadius: 5, // seberapa blur bayangan
            offset: Offset(0, 5),
          ),
        ],
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
    );
  }
}
