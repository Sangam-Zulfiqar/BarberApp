import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ProfessionScreen2ImgPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Row(
        children: [
          GestureDetector(
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(100),
              color: Colors.grey,
              strokeWidth: 1,
              dashPattern: [10, 6],
              child: Container(
                height: 85,
                width: 85,
                child: IconButton(
                  icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 112, 112, 112)),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                  iconSize: 30.0,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
