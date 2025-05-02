import 'package:flutter/material.dart';
import 'loading_page.dart';
import 'home_page.dart';
import 'Login_page.dart';
import 'register_page.dart';
import 'kalkulator_menu.dart';
import 'kalkulator_kalori.dart';
import 'kalkulator_bmi.dart';
import 'monitoring_kalori.dart';
import 'referensi_makanan.dart';
import 'jadwal_makan.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/menukalkulator': (context) => MenuKalkulator(),
        '/kalkulatorbmi': (context) => KalkulatorBmi(),
        '/kalkulatorkalori': (context) => KalkulatorKalori(),
        '/monitoringkalori': (context) => MonitoringKalori(),
        '/referensimakanan': (context) => ReferensiMakan(),
        '/jadwalmakanan': (context) => JadwalMakan(),
        
      },
    );
  }
}
