import 'package:chatgpt_app_ui/utils/app_styles.dart';
import 'package:chatgpt_app_ui/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/data.dart';
import '../widgets/getting_started_tips_builder.dart';
import '../widgets/input_field.dart';
import '../widgets/message_bubble.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool showSteps = true;

  void _toggleSteps() {
    setState(() {
      showSteps = !showSteps;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: cWhite,
      appBar: _buildChatScreenAppBar(_toggleSteps),
      body: Stack(children: [
        SizedBox(height: SizeConfig.horizontalBlockSize! * 2),
        const Divider(
          color: cGrey,
          thickness: 1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.horizontalBlockSize! * 3,
              vertical: SizeConfig.verticalBlockSize! * 3),
          //main content goes here

          child: showSteps
              ? const GettingStartedTipsBuilder()
              : ListView.builder(
                  itemCount: chatMessages.length,
                  itemBuilder: (context, index) {
                    return MessageBubble(
                      message: chatMessages[index]["message"].toString(),
                      isMe: chatMessages[index]["isMe"],
                    );
                  },
                ),
        ),
        const InputField()
      ]),
    );
  }

  AppBar _buildChatScreenAppBar(Function toggleSteps) {
    return AppBar(
      elevation: 0,
      backgroundColor: cWhite,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: _toggleSteps,
                icon: const Icon(
                  Icons.arrow_back,
                  color: cBlack,
                )),
            Image.asset('assets/avatar.png'),
            SizedBox(width: SizeConfig.horizontalBlockSize! * 3),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('ChatGPT',
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
