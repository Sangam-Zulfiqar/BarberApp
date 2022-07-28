import 'package:flutter/material.dart';

class AppImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
            iconSize: 20.0,
            onPressed: () {},
          ),
        ),
        Text('Upload Photo'),
      ],
    );
  }
}
