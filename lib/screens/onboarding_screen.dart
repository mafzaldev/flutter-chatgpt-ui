import 'package:chatgpt_app_ui/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt_app_ui/utils/app_styles.dart';

import '../widgets/onboarding_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: cWhite,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.horizontalBlockSize! * 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: SizeConfig.verticalBlockSize! * 5),
              Column(
                children: [
                  Text("You AI Assistant",
                      style: cBold.copyWith(color: cPrimaryBlue, fontSize: 30)),
                  Text(
                    "Using this software,you can ask you questions and receive articles using artificial intelligence assistant",
                    style: cSemiBold.copyWith(
                      color: cBlack,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SizedBox(height: SizeConfig.verticalBlockSize! * 2),
              Image.asset('assets/onboarding_image.png'),
              SizedBox(height: SizeConfig.verticalBlockSize! * 5),
              const OnBoardingButton(),
              SizedBox(height: SizeConfig.verticalBlockSize! * 2),
            ],
          ),
        ));
  }
}
