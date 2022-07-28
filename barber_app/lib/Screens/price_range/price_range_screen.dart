import 'package:barber_app/Screens/ProfessionScreen2/ProfessionScreen2.dart';
import 'package:barber_app/Widgets/Button.dart';
import 'package:barber_app/screens/price_range/price_range_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../create_account/create_account_provider.dart';

class PriceRangeScreen extends StatelessWidget {
  const PriceRangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PriceRangeProvider(),
      child: Scaffold(
        body: Consumer<PriceRangeProvider>(builder: (context, model, child) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                    'Price Range',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Price Range (Under 18)'),
                  SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    value: model.selectedValue,
                    items: model.dropdownItems,
                    onChanged: (val) {
                      model.myOnChangeFun(val);
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Price Range"),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    value: model.selectedValue,
                    items: model.dropdownItems,
                    onChanged: (val) {
                      model.myOnChangeFun(val);
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Please Select Copun'),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    value: model.selectedValue,
                    items: model.dropdownItems,
                    onChanged: (val) {
                      model.myOnChangeFun(val);
                    },
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: NewButton(
                      ontap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfessionScreen2()),
                        );
                      },
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
