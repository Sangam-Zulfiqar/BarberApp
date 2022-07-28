import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final ontap;
  NewButton({
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Next',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
