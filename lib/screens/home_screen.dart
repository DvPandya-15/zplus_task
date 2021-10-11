import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zplus_task/utils/colors.dart';
import 'package:zplus_task/widget/custom_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  //TODO: make this widget stateful and make floating bottom navigationbar responsive

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Welcome",
                style: TextStyle(
                    color: AppColor.fontColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Jaimini Desai",
                style: TextStyle(
                  color: AppColor.fontColor,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 500,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: const <Widget>[
                  CustomCard(
                    itemName: 'Vehicle',
                    icon: Icons.directions_car,
                  ),
                  CustomCard(
                    itemName: 'Transaction',
                    icon: Icons.credit_card,
                  ),
                  CustomCard(
                    itemName: 'Report',
                    icon: Icons.sticky_note_2_sharp,
                  ),
                  CustomCard(
                    itemName: 'Profile',
                    icon: Icons.person,
                  ),
                  CustomCard(
                    itemName: 'Contact',
                    icon: Icons.call,
                  ),
                  CustomCard(
                    itemName: 'About',
                    icon: Icons.info_outline_rounded,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.selectedColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.directions_car,
                          color: AppColor.backgroundColor,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.backgroundColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.credit_card,
                          color: AppColor.disableIconColor,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.backgroundColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.sticky_note_2_sharp,
                          color: AppColor.disableIconColor,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.backgroundColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          color: AppColor.disableIconColor,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.backgroundColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.info_outline_rounded,
                          color: AppColor.disableIconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
