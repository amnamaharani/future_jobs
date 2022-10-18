import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/bg_secondhomepage.png'
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 200,
                    left: 24,
                  ),
                  child: Text(
                    'Website Developer',
                    style: jobTitleTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 240,
                    left: 24,
                  ),
                  child: Text(
                    '12,309 available',
                    style: availableJobTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}