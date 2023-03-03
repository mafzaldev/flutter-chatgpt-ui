import 'package:chatgpt_app_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  const MessageBubble({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 120),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          color: isMe ? cPrimaryBlue : cSenderBubbleCar,
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                message,
                style: cSemiBold.copyWith(
                    color: isMe ? cWhite : cBlack, fontSize: 16),
              )),
        ),
      ),
    );
  }
}
