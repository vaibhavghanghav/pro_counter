import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pro_counter/pages/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.currency_rupee,
              size: 150,
              color: Color(0xFFC0C0C0),
            ),
            SizedBox(height: 20),
            Text(
              'E X P E N Z O',
              style: TextStyle(
                fontSize: 54,
                color: Color(0xFFC0C0C0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
