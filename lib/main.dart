import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover_app/featuers/config/constants/applacation_theme_manger.dart';
import 'package:rover_app/featuers/home/pages/home_map_view.dart';
import 'package:rover_app/featuers/settings/setting_provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SettingProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

      //  home: ForgetPasswordView(),
      //  home:VerivicationView() ,

      home: HomeMapView(),
//  home: LoginView(),

//home: AskAndAnswerPage(),

//home: ChatPage() ,

//home: HowToUse(),
    );
  }
}
