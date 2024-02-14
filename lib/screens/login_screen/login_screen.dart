import 'package:bata/screens/common/custom_text_field.dart';
import 'package:bata/screens/home_screen/home_screen.dart';
import 'package:bata/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 90,
              ),
              const Image(
                image: AssetImage("assets/images/bata_logo.png"),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomTextField(
                width: double.maxFinite,
                height: 56,
                lable: "User Name",
                inputType: TextInputType.name,
              ),
              const SizedBox(
                height: 32,
              ),
              const CustomTextField(
                width: double.maxFinite,
                height: 56,
                lable: "Password",
                inputType: TextInputType.name,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Checkbox(
                      visualDensity: VisualDensity(
                        horizontal: -4.0, // Adjust the width
                        vertical: -2.0, // Adjust the height
                      ),
                      checkColor: Colors.white,
                      fillColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 240, 23, 59)),
                      value: true,
                      onChanged: null),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Remember me",
                    style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.3,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 65,
                  ),
                  Text(
                    "Forgot Password?",
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.3,
                      color: const Color.fromARGB(255, 240, 23, 59),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
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
                      "Sign In",
                      style: GoogleFonts.dmSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.8,
                          color: const Color.fromARGB(255, 248, 248, 248)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Color.fromARGB(255, 240, 23, 59),
                      height: 20,
                      indent: 0,
                      endIndent: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("or"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Color.fromARGB(255, 240, 23, 59),
                      height: 20,
                      indent: 5,
                      endIndent: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Don’t have an account?",
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.3,
                    )),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Register(),
                      ),
                    );
                  },
                  child: Text("Sign Up",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.3,
                        color: const Color.fromARGB(255, 240, 23, 59),
                      )),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
