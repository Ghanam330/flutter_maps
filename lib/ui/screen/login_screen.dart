import 'package:flutter/material.dart';
import 'package:flutter_maps/ui/widget/form_field_flag_widget.dart';
import 'package:flutter_maps/ui/widget/intro_text_widget.dart';
import 'package:flutter_maps/ui/widget/text_form_field_widget.dart';

class LoginScreen extends StatelessWidget {
  late String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: UniqueKey(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 88),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: const [
                  IntroTextWidget(
                    text: 'What is your number?',
                    fontsize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  IntroTextWidget(
                    text: 'please enter phone number to verify your account',
                    fontsize: 18,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 110,
              ),
              Expanded(
                flex: 1,
                child: TextFormFieldFlagWidget(
                  tex1: generateCountryFlag(),
                  tex2: ' +20 ',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: FormFieldWidget(
                  onSave: (v) {
                    phoneNumber = v!;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  generateCountryFlag() {
    String countryCode = 'eg';
    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
    return flag;
  }
}
