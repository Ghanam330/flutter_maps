import 'package:flutter/material.dart';
import 'package:flutter_maps/constnat/my_colors.dart';

class TextFormFieldFlagWidget extends StatelessWidget {
  final String? tex1, tex2;

  const TextFormFieldFlagWidget({Key? key, required this.tex1, this.tex2}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.lightGrey),
        borderRadius:const BorderRadius.all(  Radius.circular(6)),
      ),
      child: Text(
        tex1! + tex2!,
        style: const TextStyle(
          fontSize: 18,
          letterSpacing: 2.0,
        ),
      ),
    );
  }
}
