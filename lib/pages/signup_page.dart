import 'package:flutter/material.dart';
import 'package:future_jobs/pages/signin_page.dart';
import 'package:future_jobs/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isUploaded = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: titleTextStyle,
                    ),
                    const SizedBox(height: 2,),
                    Text(
                      'Begin New Journey',
                      style: subTitleTextStyle,
                    ),
                    const SizedBox(height: 30,),
                    Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/avatar_add.png',
                          width: 120,
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name', 
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(100),
                             borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address', 
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(100),
                             borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password', 
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(100),
                             borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Goal', 
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(100),
                             borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  SizedBox(
                    width: 400,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff4141A4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        )
                      ),
                      onPressed: () {}, 
                      child: Text(
                        'Sign Up',
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 80),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => SignIn()),
                        );
                      },
                      child: Text(
                        'Back to Sign in', 
                        style: GoogleFonts.poppins(
                          color: const Color(0xffB3B5C4),
                          fontSize: 14, 
                          fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
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