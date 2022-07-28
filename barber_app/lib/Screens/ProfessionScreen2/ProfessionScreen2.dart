//import 'dart:html';

import 'package:barber_app/Screens/ProfessionScreen2/ProfessionScreen2Provider.dart';
import 'package:barber_app/Screens/ProfileScreen2/ProfileScreen2.dart';
import 'package:barber_app/Screens/ProfileScreens/PersonalProfession/ImagePicker.dart';
import 'package:barber_app/Screens/price_range/price_range_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Widgets/Button.dart';
import '../../Widgets/CustomTextFeild.dart';
import '../../Widgets/bottom_nav_bar.dart';
import '../../Widgets/custom_textfield1.dart';
import '../ProfileScreen2/ProfileScreen2.1.dart';
import 'ProfessionScreen2ImgPicker.dart';

class ProfessionScreen2 extends StatelessWidget {
  const ProfessionScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PofessionScreenProvider(),
      child: Scaffold(
        body:
            Consumer<PofessionScreenProvider>(builder: (context, model, child) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    CustomTextField1(),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Location",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    CustomTextField1(),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Bio",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    CustomTextField1(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ProfessionScreen2ImgPicker(),
                        SizedBox(
                          width: 10,
                        ),
                        ProfessionScreen2ImgPicker(),
                        SizedBox(
                          width: 10,
                        ),
                        ProfessionScreen2ImgPicker(),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      child: DropdownButtonFormField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                        value: model.selectValue,
                        items: model.dropdownItems,
                        onChanged: (val) {
                          model.DaysDropDown(val);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Discription"),
                      // ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      height: 110,
                      child: CustomTextFeild(
                        length: 100,
                        hinttxt: "",
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: NewButton(
                        ontap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen2Two(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
