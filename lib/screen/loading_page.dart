import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  LoadingPageState createState() => LoadingPageState();
}

class LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // Simulasi loading lalu navigasi ke HomePage setelah 3 detik
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // Sesuai desain latar merah
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 0.8,
            colors: [Color(0xFFEE3343), Color(0xFF881D26)],
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/BackgroundAwanLoad.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/LogoHealth.png', fit: BoxFit.fill),

                  Image.asset(
                    'assets/hhtext.png',
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                  SizedBox(height: 24),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
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
