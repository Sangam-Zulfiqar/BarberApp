import 'package:barber_app/Screens/UserProfile/ProfileScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Widgets/ProfileTextFeild.dart';

class PersonProfileScreen2 extends StatelessWidget {
  const PersonProfileScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        body: Consumer<ProfileProvider>(
          builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("MD Jewel Rana"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("NewYork, Manhattan"),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "NewYork, Manhattan NewYork, Manhattan NewYork,NewYork\, Manhattan NewYork, Manhattan NewYork,NewYork, Manhattan NewYork, Manhattan NewYork, ",
                      textAlign: TextAlign.center,
                      // maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ProfileTextFeild(model: model),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileTextFeild(
                    model: model,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileTextFeild(
                    model: model,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Container(
                      width: 100,
                      height: 40,
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "CONFIRM",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
