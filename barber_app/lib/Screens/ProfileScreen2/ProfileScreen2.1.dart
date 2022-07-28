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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image(
                        image: AssetImage('assets/icons/img1.jpg'),
                      ),
                      height: 110,
                      width: 110,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image(
                        image: AssetImage(
                          'assets/icons/img1.jpg',
                        ),
                      ),
                      height: 110,
                      width: 110,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image(
                        image: AssetImage('assets/icons/img1.jpg'),
                      ),
                      height: 110,
                      width: 110,
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

              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonTheme(
                      minWidth: 100,
                      height: 40,
                      child: RaisedButton(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Colors.purple,
                          onPressed: () {}),
                    ),
                    ButtonTheme(
                      minWidth: 100,
                      height: 40,
                      child: RaisedButton(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavigation()));
                          }),
                    ),
                  ],
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: NewButton(
              //     ontap: () {
              //       Navigator.pushReplacement(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => BottomNavigation(),
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
