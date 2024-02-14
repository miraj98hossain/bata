import 'package:bata/screens/common/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: GoogleFonts.dmSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: -0.4,
              color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Let’s set up your account",
                style: GoogleFonts.dmSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.8,
                    color: const Color.fromARGB(255, 240, 23, 59)),
              ),
              const SizedBox(
                height: 40,
              ),
              const Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      height: 56,
                      width: double.maxFinite,
                      lable: "Mobile No",
                      inputType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: double.maxFinite,
                      lable: "Control No",
                      inputType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: double.maxFinite,
                      lable: "Email Address",
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: double.maxFinite,
                      lable: "Password",
                      inputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomTextField(
                      height: 56,
                      width: double.maxFinite,
                      lable: "Confirm Password",
                      inputType: TextInputType.name,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 56,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 240, 23, 59),
                    Color.fromARGB(255, 243, 41, 41),
                  ]),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.8,
                        color: const Color.fromARGB(255, 248, 248, 248)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
