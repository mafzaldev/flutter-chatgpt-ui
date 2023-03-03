import 'package:chatgpt_app_ui/screens/chat_screen.dart';
import 'package:chatgpt_app_ui/utils/app_styles.dart';
import 'package:chatgpt_app_ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Chat()));
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: cPrimaryBlue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.horizontalBlockSize! * 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Continue',
                style: cRegular.copyWith(
                  color: cWhite,
                  fontSize: 20,
                ),
              ),
              const Icon(Icons.arrow_forward, color: cWhite)
            ],
          ),
        ),
      ),
    );
  }
}
