import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_navbar.dart';

class MenuKalkulator extends StatelessWidget {
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
            child: Column(
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
                        height: 150,
                        width: 375,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: const Color(0xFF73B4D6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/logokalori.png',
                                fit: BoxFit.cover,
                                width: 60,
                                height: 60,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Kalkulator Kalori",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
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
                        Navigator.pushNamed(context, '/kalkulatorbmi');
                      },
                      child: Container(
                        height: 150,
                        width: 375,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: const Color(0xFFCEEE10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/logobmi.png',
                                fit: BoxFit.cover,
                                width: 60,
                                height: 60,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Kalkulator BMI",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
