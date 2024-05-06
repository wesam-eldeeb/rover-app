import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover_app/featuers/saftty/widget/listTile.dart';
import 'package:rover_app/featuers/settings/setting_provider.dart';

class SafttyView extends StatelessWidget {
  const SafttyView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuary =
        MediaQuery.of(context).size; //reposive لطول والعرض بضبط(mediaQuary)
    var theme = Theme.of(context);
    var vm = Provider.of<SettingProvider>(context);
    
    return Scaffold(
        appBar: AppBar(
          title:const Text(
            'safety',
            style: TextStyle(color: Colors.black), 
          ),
          backgroundColor: Colors.white,
          iconTheme:const IconThemeData(color: Colors.black), 
          leading:const Icon(Icons.menu), 
        ),
      body: Column(children: [
          //Sizebox
                       SizedBox(
                        height:mediaQuary.height*.13,
                      ),
          //image
                       CircleAvatar(
                          radius: mediaQuary.width*.15,
                          backgroundImage:const AssetImage(
                              "assets/images/verivication.png",
                              
                          )),
                          
                      //SizedBox
                         SizedBox(
                          height:mediaQuary.height*.038,
                        ),

                        //queation
                        const  Text("Who do you want to cotact?",style:TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           fontStyle: FontStyle.italic
                           ),),
                             //SizedBox
                         SizedBox(
                          height:mediaQuary.height*.030,
                        ),

                        ListTileSaftty(leading:const Icon(Icons.phone), title: ("Ambulance"), ),
                          ListTileSaftty(leading:const Icon(Icons.phone), title:  ("Police"), ),
                            ListTileSaftty(leading:const Icon(Icons.security), title:  ("Massage"), ),
                              ListTileSaftty(leading:const Icon(Icons.safety_check), title: ("Safety tips"), )
                      

      ],),
    );
  }
}