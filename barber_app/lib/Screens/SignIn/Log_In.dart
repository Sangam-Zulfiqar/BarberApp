import 'package:barber_app/Screens/VendorSelection/OpenScreen.dart';
import 'package:barber_app/Screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../Widgets/SignUpButton.dart';
import '../create_account/create_account_screen.dart';

class Log_In extends StatelessWidget {
  const Log_In({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/icons/logo1.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SignUpButton(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VendorSelection(),
                    ),
                  );
                },
                title: 'Creat Account',
                colorP: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: SignUpButton(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    title: 'SignUp',
                    colorP: Colors.purple),
              )
            ],
          ),
        ],
      ),
    );
  }
}
