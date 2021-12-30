import 'package:flutter/material.dart';
import 'package:neew/constants.dart';
import 'package:neew/MainScreen/custom_card.dart';

class MainScreenBody extends StatefulWidget {
  @override
  _MainScreenBodyState createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: kDarkGreyColor,
                ),
                Text(
                  'My Home',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Container(
                  height: size.height * 0.045,
                  width: size.width * 0.095,
                )
              ],
            ),
            SizedBox(height: size.height * 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.home_outlined,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "GATE",
                  statusOn: "OPEN",
                  statusOff: "LOCKED",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.lightbulb_outline,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "MAIN LIGHT",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.lightbulb_sharp,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "MAIN SWITCH",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.ac_unit,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "AIRCOND",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.camera_indoor_outlined,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "CAMERA",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.alarm,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "DOOR ALARM",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
          ],
        ));
  }
}
