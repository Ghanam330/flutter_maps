import 'package:flutter/material.dart';
class ButtonWidgetMaps extends StatelessWidget {

final Function() onpressed ;
final String? text;

  const ButtonWidgetMaps({Key? key,required this.onpressed,required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: onpressed,
        child:Text('${text}',style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),),
        style:ElevatedButton.styleFrom(
          minimumSize: const Size(110,50),
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          )
        ),
      ),
    );
  }
}
