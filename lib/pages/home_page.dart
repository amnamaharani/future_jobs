import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/custom_list.dart';
import 'package:future_jobs/widgets/job_card.dart';

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
                children: const [
                  JobCard(
                    text: 'Website Developer', 
                    imageUrl: 'assets/card_category.png',
                  ),
                  SizedBox(width: 16,),
                  JobCard(
                    text: 'Mobile Developer', 
                    imageUrl: 'assets/card_category2.png',
                  ),
                  SizedBox(width: 16,),
                  JobCard(
                    text: 'App Designer', 
                    imageUrl: 'assets/card_category3.png',
                  ),
                  SizedBox(width: 16,),
                  JobCard(
                    text: 'Content Writer', 
                    imageUrl: 'assets/card_category4.png',
                  ),
                  SizedBox(width: 16,),
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                  CustomList(
                    jobTitle: 'Front-End Developer', 
                    companyName: 'Google', 
                    imageUrl: 'assets/google_icon.png'
                  ),
                  CustomList(
                    jobTitle: 'UI Designer', 
                    companyName: 'Instagram', 
                    imageUrl: 'assets/instagram_icon.png'
                  ),
                  CustomList(
                    jobTitle: 'Data Scientist', 
                    companyName: 'Facebook', 
                    imageUrl: 'assets/facebook_icon.png'
                  ),
                  SizedBox(height: 16.5,),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xffB3B5C4),
        selectedItemColor: const Color(0xff272C2F),
        currentIndex: 0,
        elevation: 0,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar_1.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar_2.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar_3.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar_4.png'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}