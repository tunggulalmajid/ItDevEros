import 'package:flutter/material.dart';
import 'screen/loading_page.dart';
import 'screen/home_page.dart';
import 'screen/Login_page.dart';
import 'screen/register_page.dart';
import 'screen/kalkulator_menu.dart';
import 'screen/kalkulator_kalori.dart';
import 'screen/kalkulator_bmi.dart';
import 'screen/monitoring_kalori.dart';
import 'screen/referensi_makanan.dart';
import 'screen/jadwal_makan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
