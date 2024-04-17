

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover_app/featuers/config/constants/applacation_theme_manger.dart';
import 'package:rover_app/featuers/login/pages/login_view.dart';
import 'package:rover_app/featuers/profile/pages/profile_view.dart';
import 'package:rover_app/featuers/register/pages/register_view.dart';
import 'package:rover_app/featuers/setting_provider.dart';
import 'package:rover_app/featuers/splash/pages/splash_view.dart';


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
    var vm = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: vm.currentTheme,
      theme: ApplacationThemeManger.lightTheme,
      darkTheme: ApplacationThemeManger.darkTheme,
       initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LoginView.routeName: (context) =>  LoginView(),
        RegisterView.routeName: (context) =>  RegisterView(),
      //  ProfileView.routeName:(context)=> ProfileView(),
      },

      home: ProfileView(),
    );
  }
}
