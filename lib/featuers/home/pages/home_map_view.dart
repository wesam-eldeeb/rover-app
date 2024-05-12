import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rover_app/featuers/config/constants/colors/my_colors.dart';
import 'package:rover_app/featuers/home/widget/elevation_button_driver.dart';
import 'package:rover_app/featuers/home/widget/elevation_button_passenger.dart';
import 'package:rover_app/featuers/home/widget/custom_navigater_drawer.dart';

class HomeMapView extends StatelessWidget {
  const HomeMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  this is defult app bar
      appBar: AppBar(
        backgroundColor: MyColors.red,
        title:const Text(
          'Welcom In Rover',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      //Drawer
      drawer: CustomNavigationDrawer()

      //Desien on page
      ,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/map.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  //ElevatedButton(Driver)
                  ElvationButtonDriver(),
                  const Spacer(),
                  //ElevatedButton(Passenger)
                  ElvationButtonPassenger(),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

