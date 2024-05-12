import 'package:flutter/material.dart';
import 'package:rover_app/featuers/My%20Trip/pages/myTrip_screen.dart';
import 'package:rover_app/featuers/anyService/pages/any_service.dart';
import 'package:rover_app/featuers/config/constants/colors/my_colors.dart';
import 'package:rover_app/featuers/profile/pages/profile_view.dart';
import 'package:rover_app/featuers/saftty/pages/saftty_view.dart';
import 'package:rover_app/featuers/settings/pages/setting_screen.dart';
import 'package:rover_app/featuers/support/pages/support.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.4),
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 43,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Column(
                    children: [
                      Text(
                        'Welcom Rover',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '01198765432',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),

            //profile
            buildListTileWithArrow(Icons.person, 'Profile', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ProfileView();
              }));
            }),
            //Setting
            buildListTileWithArrow(Icons.settings, 'Setting', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return SettingScreen();
              }));
            }),
            //support
            buildListTileWithArrow(Icons.support, 'Support', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return SupportPage();
              }));
            }),
            //my Trips
            buildListTileWithArrow(Icons.trip_origin, 'My Trips', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return MytripScreen();
              }));
            }),
            //any Service
            buildListTileWithArrow(Icons.local_offer, 'Any Service', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return AnyService();
              }));
            }),
            //safety
            buildListTileWithArrow(Icons.security, 'Safety', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return SafttyView();
              }
              ));
            }),
          ],
        ),
      ),
    );
  }
}

Widget buildListTileWithArrow(
    IconData icon, String title, VoidCallback? onTap) {
  return ListTile(
    leading: Icon(icon, color: MyColors.red.withOpacity(0.9)),
    title: Text(title, style: TextStyle(color: Colors.white.withOpacity(0.9))),
    trailing: Icon(Icons.arrow_right, color: MyColors.red.withOpacity(0.9)),
    onTap: onTap,
  );
}
