import 'package:flutter/material.dart';

import '../../Widgets/CustomChatBubble.dart';
import 'dart:math' as math;

class CustomReceivedMessageUI extends StatelessWidget {
  final String receivedMsgTxt;
  const CustomReceivedMessageUI({
    required this.receivedMsgTxt,
  });

  @override
  Widget build(BuildContext context) {
    //  var math;
    final receivedMsgTxtGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: CustomPaint(
            painter: CustomBubbleShape(
              Color.fromARGB(255, 240, 240, 240),
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(
              receivedMsgTxt,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 45, left: 15, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          receivedMsgTxtGroup,
        ],
      ),
    );
  }
}
