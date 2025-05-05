import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/bottom_navbar.dart';

class ReferensiMakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Navbar(height: 200),
      ),
      bottomNavigationBar: BottomNav(),
      body: Column(
        children: [Expanded(child: Center(child: Text("Referensi makanan")))],
      ),
    );
  }
}
