import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rover_app/featuers/home/widget/elevation_button_driver.dart';
import 'package:rover_app/featuers/home/widget/elevation_button_passenger.dart';


class HomeMapView extends StatelessWidget {
  const HomeMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
