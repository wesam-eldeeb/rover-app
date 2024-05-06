

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover_app/featuers/About/pages/about_screen.dart';
import 'package:rover_app/featuers/Available%20Trips/pages/availableTrips_screen.dart';
import 'package:rover_app/featuers/Category/pages/tab_container.dart';
import 'package:rover_app/featuers/ForgetPassword/Pages/forget_password_view.dart';
import 'package:rover_app/featuers/My%20Trip/pages/myTrip_screen.dart';
import 'package:rover_app/featuers/config/constants/applacation_theme_manger.dart';
import 'package:rover_app/featuers/home/pages/home_map_view.dart';
import 'package:rover_app/featuers/login/pages/login_view.dart';
import 'package:rover_app/featuers/profile/pages/profile_view.dart';
import 'package:rover_app/featuers/register/pages/register_view.dart';
import 'package:rover_app/featuers/saftty/pages/saftty_view.dart';
import 'package:rover_app/featuers/settings/setting_provider.dart';
import 'package:rover_app/featuers/splash/pages/splash_view.dart';
import 'package:rover_app/featuers/verivication/pages/verivication_view.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SettingProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    var vm = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: vm.currentTheme,
      theme: ApplacationThemeManger.lightTheme,
      darkTheme: ApplacationThemeManger.darkTheme,
      //  initialRoute: SplashView.routeName,
      // routes: {
      //   SplashView.routeName: (context) => const SplashView(),
      //   LoginView.routeName: (context) =>  LoginView(),
      //   RegisterView.routeName: (context) =>  RegisterView(),
      // //  ProfileView.routeName:(context)=> ProfileView(),
      // },

    //  home: ProfileView(),
  //  home: ForgetPasswordView(),
  //  home:VerivicationView() ,
  //home: SafttyView(),
  //home: HomeMapView(),
//  home: LoginView(),
//home: MyApp(),
//home: AboutScreen(),
//home:AvailableScreen(),
home: MytripScreen()  ,
    );
  }
}
