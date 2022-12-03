import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pab/screens/auths/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  getInit() async {
    Navigator.pushNamed(context, LoginScreen.route);
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, getInit);
  }

  @override
  void initState() {
    // TODO: implement initState
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff778BEB),
      body: Center(child: Image.asset('assets/logo kompening.png')),
    );
  }
}
