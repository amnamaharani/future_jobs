import 'package:flutter/material.dart';
import 'package:future_jobs/pages/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Build Your Next\nFuture Career Like\na Master',
                    style: GoogleFonts.poppins(
                      fontSize: 32, 
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20,), 
                  Text(
                    '18,000 jobs available',
                    style: GoogleFonts.poppins(
                    fontSize: 14, 
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 400,),
                      child: Container(
                        height: 45,
                        width: 200,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66),
                            ),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.poppins(
                              fontSize: 14, 
                              fontWeight: FontWeight.w500, 
                              color: Color(0xff4141A4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Container(
                        height: 45,
                        width: 200,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66),
                            ),
                          ),
                          child: Text(
                            'Sign in', 
                            style: GoogleFonts.poppins(
                              fontSize: 14, 
                              fontWeight: FontWeight.w500, 
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}