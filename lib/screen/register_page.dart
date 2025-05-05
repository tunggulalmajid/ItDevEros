import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Navbar(height: 200),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[200], // abu-abu terang
              child: Center(
                child: Text(
                  'Ini Halaman register',
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
