import 'package:flutter/material.dart';
import 'package:future_jobs/pages/second_home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {

  final String text;
  final String imageUrl;

  const JobCard({
    Key? key, 
    required this.text,
    required this.imageUrl,
  }) : super(key: key);
    
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondHomePage()),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 10,
              bottom: 15, 
              right: 10,
            ),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
      ),
    );                 
  }
}