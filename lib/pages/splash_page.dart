import 'dart:async';
import 'package:flutter/material.dart';
import 'package:future_jobs/pages/started_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  // NOTE : STATE TIMER SPLASH SCREEN

  @override
  void initState() {
    super.initState(); 

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const GetStartedPage()
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 76,
              width: 59,
            ),
            const SizedBox(height:50 ,),
            Text(
              'FUTUREJOB',
              style: GoogleFonts.poppins(
                color: Colors.white, 
                fontSize: 32, 
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}