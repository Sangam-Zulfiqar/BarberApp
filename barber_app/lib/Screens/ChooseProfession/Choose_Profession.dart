import 'package:barber_app/Screens/ExperienceLevel/Experience_Level.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Button.dart';

import 'Container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Choose_Profession extends StatelessWidget {
  const Choose_Profession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "Choose Profession",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.all(10),
            childAspectRatio: 2.5 / 2,
            crossAxisCount: 2,
            children: [
              ContainerClass(
                imgPath: 'assets/icons/HairStyle.svg',
                title: "Barber",
              ),
              ContainerClass(
                imgPath: 'assets/icons/Brows.svg',
                title: "Brows",
              ),
              ContainerClass(
                imgPath: 'assets/icons/HairStyle.svg',
                title: "Hair Sstylist",
              ),
              ContainerClass(
                imgPath: 'assets/icons/Pedicure.svg',
                title: "Pedicurest",
              ),
              ContainerClass(
                imgPath: 'assets/icons/HairBeautyProducts.svg',
                title: "Hair Beauty Products",
              ),
              ContainerClass(
                imgPath: 'assets/icons/HairBeautyProducts.svg',
                title: "MakeUp Products",
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 100),
              child: NewButton(
                ontap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ExperienceLevel()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
