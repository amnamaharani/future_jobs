import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/custom_list.dart';

class SecondHomePage extends StatelessWidget {
 
  final String jobTitleName;
  final String imageUrl;

   const SecondHomePage({
    Key? key,
    required this.jobTitleName,
    required this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 170,
                        left: 24,
                      ),
                      child: Text(
                        jobTitleName,
                        style: jobTitleTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 210,
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
      ),
    );
  }
}