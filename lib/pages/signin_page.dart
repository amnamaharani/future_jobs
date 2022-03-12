import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 70, 
            left: 24, 
            right: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 2,),
                Text(
                  'Build Your Career',
                  style: subTitleTextStyle,
                ),
                const SizedBox(height: 40,),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/illustration_one.png',
                        width: 262,
                        height: 240,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address', 
                      style: titleTextStyle,
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(
                      controller: emailController,
                      onChanged: (value) {
                        // ignore: avoid_print
                        print(value); 
                        bool isValid = EmailValidator.validate(value);
                        // ignore: avoid_print
                        print(isValid);
                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        }
                        else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color:isEmailValid 
                          ? const Color(0xff4141A4) 
                          : const Color(0xffFD4F56)
                          ),
                        ),
                        hintText: '',
                      ),
                      style: TextStyle(
                        color: isEmailValid 
                          ? const Color(0xff4141A4) 
                          : const Color(0xffFD4F56)
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      'Password', 
                      style: titleTextStyle,
                    ),
                    const SizedBox(height: 8,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(color: Color(0xff4141A4)),
                        ),
                        hintText: '',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff4141A4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                    ),
                    onPressed: () {}, 
                    child: Text(
                      'Sign In',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 80),
                  child: Center(
                    child: Text(
                      'Create New Account', 
                      style: GoogleFonts.poppins(
                        color: const Color(0xffB3B5C4),
                        fontSize: 14, 
                        fontWeight: FontWeight.w300,
                      ),
                    ),
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