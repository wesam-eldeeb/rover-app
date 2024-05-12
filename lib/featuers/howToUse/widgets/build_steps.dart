  import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildSteps() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Steps',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        buildStep('1. The first and last name must not exceed 50 characters.'),
        buildStep('2. The email should be in standard format.'),
        buildStep(
            '3. The password must be strong, composed of a combination of letters, numbers, and symbols (ASCII characters only), without diacritical marks or special characters.'),
        buildStep('4. Password confirmation is required.'),
        buildStep(
            '5. In case of forgotten password or unauthorized account access, a confirmation code is sent for user verification or account recovery.'),
        buildStep('6. Each user is assigned a unique identification number upon data entry.'),
        buildStep('7. During new account creation, the system checks if the email is already registered. If so, a message is sent indicating that the email is already in the database.'),
      ],
    );
  }

  Widget buildStep(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                text.substring(0, 1),
                style:const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        const  SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text.substring(3),
              style:const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }


