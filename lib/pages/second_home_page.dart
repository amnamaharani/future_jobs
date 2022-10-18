import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/custom_list.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
              Container(
                padding: const EdgeInsets.only(top: 30, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Big Companies',
                      style: titlePropertiesStyle,
                    ),
                    Column(
                      children: const [
                        CustomList(
                          jobTitle: 'Google', 
                          companyName: 'Front-End Developer', 
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
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Startups',
                      style: titlePropertiesStyle,
                    ),
                    Column(
                      children: const [
                        CustomList(
                          jobTitle: 'Google', 
                          companyName: 'Front-End Developer', 
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
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}