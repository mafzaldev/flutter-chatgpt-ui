import 'package:chatgpt_app_ui/utils/app_styles.dart';
import 'package:chatgpt_app_ui/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../widgets/getting_started_tip.dart';
import '../widgets/icon_with_text.dart';
import '../widgets/input_field.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: cWhite,
      appBar: _buildChatScreenAppBar(),
      body: Stack(children: [
        SizedBox(height: SizeConfig.horizontalBlockSize! * 2),
        const Divider(
          color: cGrey,
          thickness: 1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.horizontalBlockSize! * 5),
          //main content goes here

          child: ListView(
            children: [
              SizedBox(
                height: SizeConfig.horizontalBlockSize! * 6,
              ),
              Column(
                children: const [
                  IconWithText(icon: Icons.wrap_text, text: "Explain"),
                  GettingStartedTip(text: 'Explain Quantum physics'),
                  GettingStartedTip(
                      text: 'What are wormholes explain like i am 5'),
                ],
              ),
              SizedBox(
                height: SizeConfig.horizontalBlockSize! * 6,
              ),
              Column(
                children: const [
                  IconWithText(icon: Icons.edit, text: "Write & edit"),
                  GettingStartedTip(text: 'Write a tweet about global warming'),
                  GettingStartedTip(text: 'Write a poem about flower and love'),
                  GettingStartedTip(text: 'Write a rap song lyrics about'),
                ],
              ),
              SizedBox(
                height: SizeConfig.horizontalBlockSize! * 6,
              ),
              Column(
                children: const [
                  IconWithText(icon: Icons.translate, text: "Translate"),
                  GettingStartedTip(
                      text: 'How do you say “how are you” in korean?'),
                  GettingStartedTip(text: 'Write a poem about flower and love'),
                  GettingStartedTip(text: 'Write a rap song lyrics about'),
                ],
              )
            ],
          ),
        ),
        const InputField()
      ]),
    );
  }

  AppBar _buildChatScreenAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: cWhite,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: cBlack,
                )),
            Image.asset('assets/avatar.png'),
            SizedBox(width: SizeConfig.horizontalBlockSize! * 3),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('John Doe',
                  style: cBold.copyWith(
                    color: cPrimaryBlue,
                    fontSize: 20,
                  )),
              Text('Online',
                  style: cSemiBold.copyWith(
                    color: cGreen,
                    fontSize: 18,
                  )),
            ]),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_up,
                  color: cBlack,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.exit_to_app,
                  color: cGrey,
                )),
          ]),
    );
  }
}
