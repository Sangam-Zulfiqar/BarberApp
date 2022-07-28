import 'package:flutter/material.dart';

import '../../Widgets/CustomChatBubble.dart';

class CustomSendMessageUI extends StatelessWidget {
  final String sendMsgTxt;
  const CustomSendMessageUI({
    required this.sendMsgTxt,
  });
  @override
  Widget build(BuildContext context) {
    final sendMsgTxtGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 177, 231),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(
              sendMsgTxt,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
        CustomPaint(
          painter: CustomBubbleShape(
            Color.fromARGB(255, 223, 177, 231),
          ),
        ),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 15, left: 45, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          sendMsgTxtGroup,
        ],
      ),
    );
  }
}
