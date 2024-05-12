import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rover_app/featuers/config/constants/colors/my_colors.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = 'about_screen';

  @override
  Widget build(BuildContext context) {
    var mediaQuary =
        MediaQuery.of(context).size; 
    var theme = Theme.of(context);
    return Scaffold(
      appBar:  AppBar(
          title:const Text(
            'About',
            style:  TextStyle(color: MyColors.red), 
          ),
          centerTitle: true,
          leading: IconButton(
            icon:const Icon(
              Icons.arrow_back,
              color: Colors.red, 
            ),
            onPressed:  () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white, 
        ),
        backgroundColor: Colors.white,
      
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 220,
            // width: 150,
            // color: Colors.cyan,
            child: Image.asset(
              'assets/images/about.png',
              height:mediaQuary.height*.3,
              width: mediaQuary.width*.3,
            ),
          ),
          Container(
            padding:const EdgeInsets.symmetric(vertical: 14, horizontal: 35),
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xffE60024),
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding:const EdgeInsets.symmetric(vertical: 18, horizontal: 35),
            child:  const Column(
              children: [
              Text(
                  "Lorem ipsum dolor sit amet."
                  " Eum reiciendis omnis quo placeat laboriosam adipisci vitae! Aut nemo esse est minus illum ut eveniet nobis seed reiciendis deleniti aut perspiciatis rerum aut repellendus itaque non repudiandae earum.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 19,
                    color: Color(0xff707070),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
