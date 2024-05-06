import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';
import 'package:rover_app/featuers/config/constants/colors/my_colors.dart';
import 'package:rover_app/featuers/login/widgets/text_formfild_custom.dart';
 //import 'package:rover_app/featuers/login/widgets/text_formfild_custom.dart';
 import 'package:rover_app/featuers/register/pages/register_view.dart';
 import 'package:rover_app/featuers/settings/setting_provider.dart';


class LoginView extends StatelessWidget {
  static const String routeName =
      "login"; //main السطر دا عشان انادي علي الصفحه دي في ال
  var formKey = GlobalKey<FormState>(); //(2   :validat)
  LoginView({super.key});

  var EamilController = TextEditingController();
  var PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context); //اللون
    var mediaQuary =MediaQuery.of(context).size; //reposive لطول والعرض بضبط(mediaQuary)
    var theme = Theme.of(context);



    
    return Scaffold(
        
        body: Padding(
          padding: EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.8),
              child: Form(
                //(3   :validat)
                key: formKey, //(4   :validat)
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, /////
                  children: [
                    //image
                  Image.asset("assets/images/newRover.png",
                    height: mediaQuary.height*.19,
                  ),
              //  Image.asset("assets/images/logo red2.png",width:140,height:140,) , 
                //Image.asset("assets/images/logo red.png",width:180,height:180,) ,
              
                    ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.050,
                                      ),
  
                    TextFormFieldCustom(
                      labelText: "Email",
                      hintText: "Enter Your Email",
                      prefixIcon: const Icon(Icons.email),
                      controller: EamilController,
                      keyboardType: TextInputType.emailAddress,

                      //////////validator//////////
                      ////////////(6   :validat)/////////
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'you must enter your email';
                        }
                        // var regex = RegExp(
                        //     r"^[a-zA-z0-9.a-zA-x0-9.!#$%&*+-/=?^-`{|}~]+@[a-zA-z0-9]+\-[a-zA-z]*");
                        // if (!regex.hasMatch(value)) {
                        //   return "Invaild email";
                        // }
                        return null;
                      },
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      /////////////////////////
                    ),

                  ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.050,
                                      ),
                    //password
                    TextFormFieldCustom(
                      labelText: "Password",
                      hintText: "Enter Your password",
                      prefixIcon: const Icon(Icons.remove_red_eye),
                      controller: PasswordController,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,

                      //////////validator//////////
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'you must enter your password';
                        }
                        // var regex = RegExp(
                        //     r"^(?=^.{8,}$)(?=.*[!@#$%^&*]+)(?![.\\n])(?=.*[A-z])(?=.*[a-z]).*$");
                        // if (!regex.hasMatch(value)) {
                        //   return "the password must include at least \n* one Lower case letter,\n* one Uper case ,\n* one diget,\n* one specail character \n* at Least 8 characters long.";
                        // }
                        return null;
                      },
                      onFieldSubmitted: (value) {
                        print(value);
                      }, /////////////////////
                    ),
              ///Sizebox
                                       SizedBox(
                      height:mediaQuary.height*.080,
                                      ),
                  
                    
                    // ElevatedButton
                    ElevatedButton(  //(5   :validat)
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print("Successfully Login ");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(12),

                          backgroundColor: theme.primaryColor,
                          //shap
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //text
                             Text(
                                
                                "Login ",
                                
                                style: theme.textTheme.bodySmall?.copyWith(
                                //  shadows: List.filled(length, fill),
                            
                                  color: Colors.white,
                                  fontSize: 15,
                                  
                                
                                  
                                ),
                              ),
                            
                          ],
                        )),
                  //SizedBox
                     SizedBox(
                      height:mediaQuary.height*.03,
                    ),

                    //Forget password
                          Text(
                          
                      "Forget password?",
                      textAlign: TextAlign.end,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color:MyColors.red),
                        
                    ),

                    //SizedBox
                     SizedBox(
                      height:mediaQuary.height*.19,
                    ),

                    ///Don't have an Account?

                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterView.routeName);
                      }, //(4)
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an Account? ",
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                          Text("SIGNUP",
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: MyColors.red,)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}
