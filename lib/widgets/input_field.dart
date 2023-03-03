import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: cWhite,
          boxShadow: const [
            BoxShadow(
              color: cGrey,
              offset: Offset(0, 5),
              blurRadius: 5.0,
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Hello chatGPT, how are you today ?",
                    hintStyle: cSemiBold.copyWith(
                        color: cPrimaryBlue.withOpacity(0.5)),
                    border: InputBorder.none),
              ),
            ),
            // const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic_outlined,
                  color: cGrey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send_rounded,
                  color: cPrimaryBlue,
                )),
          ],
        ),
      ),
    );
  }
}
