import 'package:barber_app/Screens/ChatInboxScreen/ChatInbox.dart';
import 'package:barber_app/Screens/ChooseProfession/Choose_Profession.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/ProfileScreen2/ProfileScreen2.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;

  final pages = [
    ProfileScreen2(),
    ChatUi(),
  ];

  Future<bool> showExitPopup() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App'),
            content: Text('Do you want to exit an App?'),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        backgroundColor: pageIndex == 0 ? Colors.purple : Colors.white,
        body: pages[pageIndex],
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomNavigationItems(
                getColor: pageIndex == 0 ? Colors.white : Colors.purple,
                icon: Icons.home,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
              ),
              BottomNavigationItems(
                getColor: pageIndex == 1 ? Colors.white : Colors.purple,
                icon: Icons.chat,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
              ),
              BottomNavigationItems(
                getColor: pageIndex == 2 ? Colors.white : Colors.purple,
                icon: Icons.shopping_cart,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
              ),
              BottomNavigationItems(
                getColor: pageIndex == 3 ? Colors.white : Colors.purple,
                icon: Icons.person,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigationItems extends StatelessWidget {
  final icon;
  final onPressed;
  final getColor;

  BottomNavigationItems({
    this.icon,
    this.onPressed,
    this.getColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
        ],
      ),
    );
  }
}
