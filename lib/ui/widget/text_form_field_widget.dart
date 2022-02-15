
import 'package:flutter/material.dart';
import 'package:flutter_maps/constnat/my_colors.dart';

class FormFieldWidget extends StatelessWidget {
 final Function onSave;

  const FormFieldWidget({Key? key, required this.onSave}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.blue),
        borderRadius: const BorderRadius.all(Radius.circular(6)),

      ),
      child: TextFormField(
        autocorrect: true,
        style: const TextStyle(
          fontSize: 18,
          letterSpacing: 2.0,

        ),
        decoration: const InputDecoration(
          border: InputBorder.none
        ),
        keyboardType: TextInputType.phone,
        validator: (v){
          if(v!.isEmpty){
            return 'please enter your number';
          }else if(v.length < 11){
            return 'too short for a phone number!';
          }
          return null;
        },
onSaved: (value){
onSave;
},
      ),
    );
  }
}
