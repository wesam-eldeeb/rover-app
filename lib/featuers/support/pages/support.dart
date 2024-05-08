import 'package:flutter/material.dart';
import 'package:rover_app/featuers/support/widgets/support_button.dart';


class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuary =
        MediaQuery.of(context).size;
    return  Scaffold(
        appBar: AppBar(
          title:const Text(
            'Support',
            style:  TextStyle(color: Colors.black), // Change text color to black
          ),
          centerTitle: true,
          leading: IconButton(
            icon:const Icon(
              Icons.arrow_back,
              color: Colors.red, // Change arrow color to red
            ),
            onPressed: () {
              // Handle back button press
            },
          ),
          backgroundColor: Colors.white, // Change app bar color to white
        ),
        backgroundColor: Colors.grey[200], // Reduce scaffold background color brightness
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: mediaQuary.height*.1),
              Row(
                children: [
                  Expanded(
                    child: SupportButton(
                      icon: Icons.help,
                      text: 'Common\n Questions',
                      color: Colors.white,
                       // Set button background color here
                      onPressed: () {
                        // Implement common questions functionality
                      },
                    ),
                  ),
                 SizedBox(width:mediaQuary.width*0.04), // Increase spacing between buttons
                  Expanded(
                    child: SupportButton(
                      icon: Icons.info,
                      text: 'How to \n Use',
                      color: Colors.white, // Set button background color here
                      onPressed: () {
                        // Implement how to use functionality
                      },
                    ),
                  ),
                ],
              ),
             SizedBox(height:mediaQuary.height*0.07), // Increase vertical spacing between rows
              Row(
                children: [
                  Expanded(
                    child: SupportButton(
                      icon: Icons.settings,
                      text: 'Maintenance\n Service',
                      color: Colors.white, // Set button background color here
                      onPressed: () {
                        // Implement maintenance service functionality
                      },
                    ),
                  ),
                 SizedBox(width: mediaQuary.width*.04), // Increase spacing between buttons
                  Expanded(
                    child: SupportButton(
                      icon: Icons.info,
                      text: 'About \n',
                      color: Colors.white, // Set button background color here
                      onPressed: () {
                        // Implement about functionality
                      },
                    ),
                  ),
                ],
              ),
             SizedBox(height: mediaQuary.height*0.07), // Increase vertical spacing between rows
              SizedBox(
                width: double.infinity, // Make button width expand to fill the space
                child: SupportButton(
                  icon: Icons.build,
                  text: 'Specialized \n Service',
                  color:const Color.fromARGB(255, 254, 255, 255), // Set button background color here
                  onPressed: () {
                    // Implement specialized service functionality
                  },
                ),
              ),
            ],
          ),
        ),
      );
    
  }
}

