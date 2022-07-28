import 'package:flutter/material.dart';

class VendorSelectionContainer extends StatelessWidget {
  final txt;
  IconData icon;
  VendorSelectionContainer({
    required this.txt,
    required this.icon,
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
            Icon(icon),
            Text(txt),
          ],
        ),
      ),
    );
  }
}
