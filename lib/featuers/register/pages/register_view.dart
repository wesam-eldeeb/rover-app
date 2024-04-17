//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rover_app/featuers/login/pages/login_view.dart';
import 'package:rover_app/featuers/login/widgets/text_formfild_custom.dart';
import 'package:rover_app/featuers/register/widgets/gender_type.dart';
import 'package:rover_app/featuers/setting_provider.dart';

class RegisterView extends StatelessWidget {
  static const String routeName =
      "Register"; //main السطر دا عشان انادي علي الصفحه دي في ال

  var formKey = GlobalKey<FormState>(); //(1)

  var FirstNameController = TextEditingController();
  var LastNameController = TextEditingController();
  var EamilController = TextEditingController();
  var PasswordController = TextEditingController();
  var ConfirmPasswordController = TextEditingController();

  RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuary =
        MediaQuery.of(context).size; //reposive لطول والعرض بضبط(mediaQuary)
    var theme = Theme.of(context);
    var vm = Provider.of<SettingProvider>(context);
    
    return Scaffold(
  
          body: Padding(
            padding: const EdgeInsets.all(40), //اطراف العمود
            child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.8),
                  child: Form(
                    //(2)
                    key: formKey, //(3)
                    child: Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch, /////
                          children: [
                                      //image
                              Image.asset("assets/images/newRover.png",
                              height: mediaQuary.height*.19,),
                            Row(
                              children: [
                                //First Name
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 3),
                                  child: SizedBox(
                                    width: mediaQuary.width*0.35,
                                    child: TextFormFieldCustom(
                                      labelText: "First Name",
                                    //  hintText: "Enter Your FullName",
                                      prefixIcon: const Icon(Icons.person),
                                      controller: FirstNameController,
                                      keyboardType: TextInputType.name,
                                      ////////validator//////
                                      validator: (value) {
                                        if (value == null || value.trim().isEmpty) {
                                          return 'you must enter your name';
                                        }
                                      },
                                      /////////////
                                    ),
                                  ),
                                ),
                            
                           //Last Name
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 3),
                              child: SizedBox(
                              width: mediaQuary.width*0.35,
                                child: TextFormFieldCustom(
                                  labelText: "last Name",
                                //  hintText: "Enter Your FullName",
                                  prefixIcon: const Icon(Icons.person),
                                  controller: LastNameController,
                                  keyboardType: TextInputType.name,
                                  ////////validator//////
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'you must enter your name';
                                    }
                                  },
                                  /////////////
                                ),
                              ),
                            ),
                    
                              ],
                            ),  
                            ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.030,
                                      ),
                            //Email
                            TextFormFieldCustom(
                              labelText: "Email",
                              hintText: "Enter Your Email",
                              prefixIcon: Icon(Icons.email),
                              controller: EamilController,
                              keyboardType: TextInputType.emailAddress,
                    
                              //////////validator//////////
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'you must enter your email';
                                }
                                var regex = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                              if (!regex.hasMatch(value)) {
                                  return "Invaild email";
                                }
                                return null;
                              },
                              onFieldSubmitted: (value) {
                                print(value);
                              },
                              /////////////////////////
                            ),
                      ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.030,
                                      ),
                            //password
                    
                            TextFormFieldCustom(
                              labelText: "password",
                              hintText: "Enter Your password",
                              prefixIcon:const Icon(Icons.remove_red_eye),
                              controller: PasswordController,
                              keyboardType: TextInputType.visiblePassword,
                    
                              obscureText: true, /////////////
                              //  onChange:(){PasswordController.text},
                    
                              //////////validator//////////
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'you must enter your password';
                                }
                                var regex = RegExp(
                                    r"^(?=^.{8,}$)(?=.*[!@#$%^&*]+)(?![.\\n])(?=.*[A-z])(?=.*[a-z]).*$");
                                if (!regex.hasMatch(value)) {
                                  return "the password must include at least \n* one Lower case letter,\n* one Uper case ,\n* one diget,\n* one specail character \n* at Least 8 characters long.";
                                }
                                return null;
                              },
                              onFieldSubmitted: (value) {
                                print(value);
                              }, /////////////////////
                            ),
                            ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.030,
                                      ),
                            //confirm Password
                    
                            TextFormFieldCustom(
                              labelText: "Confirm password",
                              hintText: "Enter Your password",
                              prefixIcon:const Icon(Icons.remove_red_eye),
                              controller: ConfirmPasswordController,
                              obscureText: true, 
                              keyboardType: TextInputType.visiblePassword,
                    
                              //////////validator//////////
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'you must enter your password';
                                }
                                if (value != PasswordController.text) {
                                  return "Password Not Matched";
                                }
                                return null;
                              },
                              onFieldSubmitted: (value) {
                                print(value);
                              }, /////////////////////
                            ),
                          ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.030,
                                      ),
                    ////////Gender////////////
                    Padding(
                                padding:const EdgeInsets.only(bottom: 10),
                                child: GenderField(const["male","female"]),
                                // child: Column(
                                //   children: [
                                // const  Padding(
                                //     padding: EdgeInsets.only(right: 200),
                                //     child: Text(
                            
                                //               'Gender : ',
                                //               style: TextStyle(fontWeight: FontWeight.w400),
                                //             ),
                                //   ),  
                                //     Row(
                                //       children: [
                                //         Padding(
                                //           padding: const EdgeInsets.only(right: 25),
                                //           child: Row(
                                //             children: [
                                //           const    Icon(Icons.male),
                                //               GenderField(["male"]),
                                //             ],
                                //           ),
                                //         ),
                      
                                //         Row(
                                //           children: [
                                //         const    Icon(Icons.female),
                                //             GenderField(["female"]),
                                //           ],
                                //         ),
                                //       ],
                                //     ),
                                //   ],
                                // ),
                    ),
                                    //sizebox
                            const SizedBox(
                              height: 5,
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
                                      "Ceate Acount",
                                        
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        fontSize: 15,
                                        
                                      ),
                                    ),
                                    //icon
                                  //  const Icon(Icons.arrow_forward_outlined),
                                  
                                  
                                                                ],
                                )),
                    
                       ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.030,
                                      ),
                    
                                      //Have an Account              
                                  TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context,LoginView.routeName);
                        }, //(4)
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Have an Account? ",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                            Text("LOGIN",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: Colors.red,)
                            )
                          ],
                        ),
                      ),
                    
                    
                    
                          ]),
                    ),
                  )),
            ),
          ),
        );
  }
}
