import 'package:flutter/material.dart';
import 'package:zplus_task/utils/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.icon, required this.itemName})
      : super(key: key);
  final IconData icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Card(
        elevation: 15,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 5),
            Icon(
              icon,
              size: 40,
              color: AppColor.iconColor,
            ),
            Text(
              itemName,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
