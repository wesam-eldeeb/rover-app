//ElvationButtonDevolope(********* Driver)

import 'package:flutter/material.dart';
import 'package:rover_app/featuers/Available%20Trips/pages/availableTrips_screen.dart';
import 'package:rover_app/featuers/config/constants/colors/my_colors.dart';
import 'package:rover_app/featuers/home/widget/elevation_button_map.dart';
import 'package:rover_app/featuers/home/widget/text_filed_map.dart';

class ElvationButtonPassenger extends StatelessWidget {
  
   ElvationButtonPassenger({
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
            return 
            // Column(
            //   children: [
            //     Spacer(),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevationButtonMap(text: " \t Searsh \t", onPreseed: () {
          Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) {
                          return AvailableScreen();
                        })
                        );
                      }),
                    
                    ],
                  ),
                );
                // const Spacer(),
                // TextFieldMap(labelText: "Your Location"),
                // const Spacer(),
                // TextFieldMap(labelText: "Your Destination"),
                // const Spacer(),
                // ElevationButtonMap(text: "Search", onPreseed: () {}),
            //  ],
            //);
          },
        );
      },
      child: Text("Passenger"),
      style: ElevatedButton.styleFrom(backgroundColor: MyColors.red),
    );
  }
}
