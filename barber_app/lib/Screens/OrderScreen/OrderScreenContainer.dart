import 'package:flutter/material.dart';

class OrderScreenContainer extends StatelessWidget {
  final txt;
  final icon;
  OrderScreenContainer({
    required this.txt,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      width: 300,
      height: 130,
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 10,
            ),
            Text(txt),
            Row(
              children: [Text("5"), Icon(Icons.waves_outlined)],
            )
          ],
        ),
      ),
    );
  }
}
