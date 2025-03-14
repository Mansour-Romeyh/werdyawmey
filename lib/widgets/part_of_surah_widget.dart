

import 'package:flutter/material.dart';

class PartOfSurahWidget extends StatelessWidget {
  const PartOfSurahWidget({super.key, required this.text, required this.onTap});
  final String text;
   final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 5,
            child: Image.asset(
              'assets/images/ayah_border.png',
            ),
          ),
          Positioned(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Amiri',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            top: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.width * 0.5,
          )
        ],
      ),
    );
  }
}
