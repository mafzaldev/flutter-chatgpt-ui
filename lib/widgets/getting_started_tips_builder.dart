import 'package:flutter/material.dart';

import '../utils/responsive.dart';
import 'getting_started_tip.dart';
import 'icon_with_text.dart';

class GettingStartedTipsBuilder extends StatelessWidget {
  const GettingStartedTipsBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      children: [
        SizedBox(
          height: SizeConfig.horizontalBlockSize! * 6,
        ),
        Column(
          children: const [
            IconWithText(icon: Icons.wrap_text, text: "Explain"),
            GettingStartedTip(text: 'Explain Quantum physics'),
            GettingStartedTip(text: 'What are wormholes explain like i am 5'),
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
            GettingStartedTip(text: 'How do you say “how are you” in korean?'),
            GettingStartedTip(text: 'Write a poem about flower and love'),
            GettingStartedTip(text: 'Write a rap song lyrics about'),
          ],
        )
      ],
    );
  }
}
