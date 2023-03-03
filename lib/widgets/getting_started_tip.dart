import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/responsive.dart';

class GettingStartedTip extends StatelessWidget {
  const GettingStartedTip({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      margin: EdgeInsets.only(top: SizeConfig.verticalBlockSize! * 1),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: cGrey.withOpacity(0.5),
      ),
      child: Center(
        child: Text(
          text,
          style: cSemiBold.copyWith(
            color: cBlack,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
