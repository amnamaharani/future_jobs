import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/job_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     Widget header(){
      return Container(
        padding: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy',
                  style: titleTextStyle,
                ),
                Text(
                  'Jason Powell',
                  style: subTitleTextStyle,
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/user_pic.png',
              width: 58,
              height: 58,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        padding: const EdgeInsets.only(
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hot Categories',
              style: GoogleFonts.poppins(
                color: const Color(0xff272C2F),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 16,),
            JobCard(
              text: 'Website Developer', 
              imageUrl: 'assets/card_category.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}