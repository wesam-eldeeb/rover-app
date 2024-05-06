import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover_app/featuers/login/pages/login_view.dart';
import 'package:rover_app/featuers/settings/setting_provider.dart';

                                                   

  
class SplashView extends StatefulWidget {
  static const String routeName = "splash";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(
          context, LoginView.routeName
        );
      },
    );
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    var mediaQuary = MediaQuery.of(context).size;   //reposive لطول والعرض بضبط(mediaQuary)
    return Scaffold(
      body: Center(
        child: Image.asset(
          vm.isDark()
        
          ?"assets/images/logo red2.png"
          //:"assets/images/logo red3.png",
          :"assets/images/newRover.png",

          // :"assets/images/logo red2.png",
          //   width: 180,
          // height: 180,
          
          height: mediaQuary.height,
          width: mediaQuary.width,
        
        ),
      ),
    );
  }
}
