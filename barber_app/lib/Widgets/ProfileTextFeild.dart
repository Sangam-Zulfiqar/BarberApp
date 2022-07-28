import 'package:flutter/material.dart';

class ProfileTextFeild extends StatelessWidget {
  final model;

  ProfileTextFeild({this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: TextField(
        enableInteractiveSelection: model.textfieldEnabler,
        enabled: model.textfieldEnabler,
        decoration: InputDecoration(
            enabled: true,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            //border: OutlineInputBorder(),
            labelText: "Profession",
            hintText: 'Enter a search term',
            suffixIcon: IconButton(
                onPressed: () {
                  model.changeTextFieldEnabling();
                },
                icon: Icon(Icons.edit))
            //Icon(Icons.edit),
            ),
      ),
    );
  }
}
