import 'package:barber_app/Widgets/Button.dart';
import 'package:flutter/material.dart';

class NeedServiceScreen extends StatelessWidget {
  const NeedServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 250, left: 60),
        child: Column(
          children: [
            Text(
              "Do You Need A Mobile Service",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Text("Yes"),
                    Radio(value: "Yes", groupValue: 0, onChanged: (value) {}),
                    SizedBox(
                      width: 20,
                    ),
                    Text("No"),
                    Radio(value: "No", groupValue: 1, onChanged: (value) {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
