import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenContainer extends StatelessWidget {
  const HomeScreenContainer({
    super.key,
    required this.onTap,
    required this.lable,
  });
  final void Function()? onTap;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color.fromARGB(255, 240, 23, 59),
        ),
        child: Center(
          child: Text(
            lable,
            style: GoogleFonts.dmSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: -0.2,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
