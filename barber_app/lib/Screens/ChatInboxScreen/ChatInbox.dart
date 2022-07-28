import 'package:flutter/material.dart';

import 'Receiver.dart';
import 'Sender.dart';

class ChatUi extends StatelessWidget {
  const ChatUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: [
            CustomSendMessageUI(sendMsgTxt: "Do you want to book a table?"),
            CustomReceivedMessageUI(receivedMsgTxt: "Yes"),
            CustomSendMessageUI(
                sendMsgTxt: "Our continental cusine offer you the best food."),
            CustomReceivedMessageUI(receivedMsgTxt: "Nice"),
            CustomSendMessageUI(sendMsgTxt: "Do you want to see our menu?"),
            CustomReceivedMessageUI(receivedMsgTxt: "I already checked"),
            CustomSendMessageUI(
                sendMsgTxt:
                    "Okay. Shall we continue with the table reservation?"),
            CustomReceivedMessageUI(receivedMsgTxt: "Yes"),
            CustomSendMessageUI(
                sendMsgTxt:
                    "We are open 11:00 am to 10:00 pm from Mon to Sun."),
            CustomSendMessageUI(sendMsgTxt: "Do you want to book a table?"),
            CustomReceivedMessageUI(receivedMsgTxt: "Yes"),
            CustomSendMessageUI(
                sendMsgTxt: "Our continental cusine offer you the best food."),
            CustomReceivedMessageUI(receivedMsgTxt: "Nice"),
            CustomSendMessageUI(sendMsgTxt: "Do you want to see our menu?"),
            CustomReceivedMessageUI(receivedMsgTxt: "I already checked"),
            CustomSendMessageUI(
                sendMsgTxt:
                    "Okay. Shall we continue with the table reservation?"),
            CustomReceivedMessageUI(receivedMsgTxt: "Yes"),
            CustomSendMessageUI(
                sendMsgTxt:
                    "We are open 11:00 am to 10:00 pm from Mon to Sun."),
          ],
        ),
      ),
    );
  }
}
