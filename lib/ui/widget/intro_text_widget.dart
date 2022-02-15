import 'package:flutter/material.dart';

class IntroTextWidget extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final FontWeight? fontWeight;

  const IntroTextWidget({Key? key,required this.text,required this.fontsize, required this.color, this.fontWeight}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: fontWeight,

        ),
      ),
    );
  }
}
