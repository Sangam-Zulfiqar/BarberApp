import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ExperienceLevel/ExpClass.dart';
import 'OrderScreenClass.dart';
import 'OrderScreenContainer.dart';
import 'OrderScreenProvider.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return OrderScreenProvider();
      },
      child: SafeArea(
        child: Consumer<OrderScreenProvider>(builder: (context, model, child) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            model.getValue(1);
                          },
                          child: Column(
                            children: [
                              Container(
                                child: OrderScreenClass(
                                  myText: "Active Orders",
                                  myIcon: model.value == 1
                                      ? Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                        )
                                      : SizedBox(),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                //  mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "5",
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(Icons.waves)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            model.getValue(2);
                          },
                          child: Column(
                            children: [
                              Container(
                                // height: 100,
                                // width: 190,
                                child: OrderScreenClass(
                                  myText: "Completed Orders",
                                  myIcon: model.value == 2
                                      ? Icon(Icons.check_circle,
                                          color: Colors.blue)
                                      : SizedBox(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        model.getValue(3);
                      },
                      child: Column(
                        children: [
                          Container(
                            child: OrderScreenClass(
                              myText: "Cancelled Orders",
                              myIcon: model.value == 3
                                  ? Icon(
                                      Icons.check_circle,
                                      color: Colors.red,
                                    )
                                  : SizedBox(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
