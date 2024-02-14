import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.height,
    required this.width,
    required this.lable,
    required this.inputType,
  });
  final double height;
  final double width;
  final String lable;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            transform: Matrix4.translationValues(15.0, -12.0, 0.0),
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            color: Colors.white,
            child: Text(
              lable,
              style: GoogleFonts.dmSans(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: -0.2,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          SizedBox(
            height: 24,
            width: 247,
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24, vertical: 13),
              ),
              style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: -0.3,
              ),
              keyboardType: inputType,
            ),
          ),
        ],
      ),
    );
  }
}
