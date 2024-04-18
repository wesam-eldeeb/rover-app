import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover_app/featuers/login/widgets/text_formfild_custom.dart';
import 'package:rover_app/featuers/setting_provider.dart';
import 'package:rover_app/featuers/verivication/widgets/text_form_field.dart';

class VerivicationView extends StatelessWidget {
   VerivicationView({super.key});
var formKey = GlobalKey<FormState>(); //(2   :validat)
  @override
  Widget build(BuildContext context) {
    var mediaQuary =
        MediaQuery.of(context).size; //reposive لطول والعرض بضبط(mediaQuary)
    var theme = Theme.of(context);
    var vm = Provider.of<SettingProvider>(context);
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Form(    //(3   :validat)
                  key: formKey, //(4   :validat)
          child: Column(children: [
              //Sizebox
                       SizedBox(
                        height:mediaQuary.height*.2,
                      ),
            //image
                       CircleAvatar(
                          radius: mediaQuary.width*.15,
                          backgroundImage:const AssetImage(
                              "assets/images/verivication.png",
                              
                          )),
                          
                      //SizedBox
                         SizedBox(
                          height:mediaQuary.height*.070,
                        ),
        
                        //Forget Password
                        const  Text("Verivication Code ?",style:TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           fontStyle: FontStyle.italic
                           ),),
        
                           //SizedBox
                         SizedBox(
                          height:mediaQuary.height*.015,
                        ),
                          //text
                        const  Text("Plase type the verivication code sent to\n\t\t\t\t\t\t your email user@gmail.com  ",style:TextStyle(
      
                           fontSize: 15,
                           fontStyle: FontStyle.italic
                           ),),
                            //SizedBox
                         SizedBox(
                          height:mediaQuary.height*.040,
                        ),
                        //  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: Column(children: <Widget> [
                          Row(children: <Widget> [   
                            Expanded(child: TextFormVerivecation()),
                                Spacer(flex: 1,),
                                Expanded(child: TextFormVerivecation(),),
                                Spacer(),
                                Expanded(child: TextFormVerivecation(),),
                                Spacer(),
                                Expanded(child: TextFormVerivecation(),),
                                
                                ],)
                            
                              ],),
                      ),
                          ),
        
                          //Sizebox
                       SizedBox(
                        height:mediaQuary.height*.040,
                      ),
                      ///ElevatedButton
                      ElevatedButton(
                          onPressed: () {
                              if (formKey.currentState!.validate()) {
                                        print("validate done");
                                      }  
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12),
        
                            backgroundColor: theme.primaryColor,
                            //shape
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //text
                              Text(
                                "Ok",
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              
                            ],
                          )),
        
          ]),
        ),
      ),
    );
  }
}