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
          bottom: 30,
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
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hot Categories',
              style: titlePropertiesStyle
            ),
            const SizedBox(height: 16,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  JobCard(
                    text: 'Website Developer', 
                    imageUrl: 'assets/card_category.png',
                  ),
                  const SizedBox(width: 16,),
                  JobCard(
                    text: 'Mobile Developer', 
                    imageUrl: 'assets/card_category2.png',
                  ),
                  const SizedBox(width: 16,),
                  JobCard(
                    text: 'App Designer', 
                    imageUrl: 'assets/card_category3.png',
                  ),
                  const SizedBox(width: 16,),
                  JobCard(
                    text: 'Content Writer', 
                    imageUrl: 'assets/card_category4.png',
                  ),
                  const SizedBox(width: 16,),
                  JobCard(
                    text: 'Video Grapher', 
                    imageUrl: 'assets/card_category5.png',
                  ),
                ],
              ),
            ),

            // Just Posted
            const SizedBox(height: 30,),
            Text(
              'Just Posted',
              style: titlePropertiesStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 26,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/google_icon.png',
                    width: 44,
                    height: 45,
                  ),
                  const SizedBox(width: 27,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Front-End Developer',
                        style: jobTextStyle,
                      ),
                       Text(
                        'Google',
                        style: companyTextStyle,
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