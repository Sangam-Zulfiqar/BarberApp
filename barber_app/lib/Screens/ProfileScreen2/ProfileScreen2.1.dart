import 'package:barber_app/Screens/ProfileScreen2/ProfileScreen2.dart';
import 'package:barber_app/Widgets/Button.dart';
import 'package:flutter/material.dart';

import '../../Widgets/bottom_nav_bar.dart';

class ProfileScreen2Two extends StatelessWidget {
  ProfileScreen2Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Jewel Rana",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Hello I Am Jewel Rana As A Very Good UI/UX Designer"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hello I Am Jewel Rana As A Very Good UI/UX ",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hello I Am Jewel Rana As A Very Good UI/UX Designer",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "UI/UX Designer",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('assets/icons/img1.jpg'),
                      ),
                      height: 110,
                      width: 110,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Image(
                        image: AssetImage('assets/icons/img1.jpg'),
                      ),
                      height: 110,
                      width: 110,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Image(
                        image: AssetImage('assets/icons/img1.jpg'),
                      ),
                      height: 110,
                      width: 110,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  "Hello I Am Jewel Rana As A Very Good UI/UX Designer Hello I Am Jewel Rana"),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Hello I Am Jewel Rana As A Very Good UI/UX Designer Hello I Am Jewel Rana"),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: NewButton(
                  ontap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigation(),
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
  }
}
