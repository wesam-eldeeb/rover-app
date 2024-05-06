//ElvationButtonDevolope(********* Driver)

import 'package:flutter/material.dart';
import 'package:rover_app/featuers/config/constants/colors/my_colors.dart';
import 'package:rover_app/featuers/home/widget/elevation_button_map.dart';
import 'package:rover_app/featuers/home/widget/text_filed_map.dart';

class ElvationButtonDriver extends StatelessWidget {
  
   ElvationButtonDriver({
      Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          context: context,
          builder: (BuildContext context) {
            // هنا يمكنك إضافة المحتوى الذي تريد عرضه في الـ BottomSheet
            return Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevationButtonMap(text: "Driver", onPreseed: () {}),
                    ElevationButtonMap(text: "Passenger", onPreseed: () {}),
                  ],
                ),
                const Spacer(),
                TextFieldMap(labelText: "Your Location"),
                const Spacer(),
                TextFieldMap(labelText: "Your Destination"),
                const Spacer(),
                  TextFieldMap(labelText: "Your Price"),
                const Spacer(),
                ElevationButtonMap(text: "Complete", onPreseed: () {}),
              ],
            );
          },
        );
      },
      child: Text("Driver"),
      style: ElevatedButton.styleFrom(backgroundColor: MyColors.red),
    );
  }
}
