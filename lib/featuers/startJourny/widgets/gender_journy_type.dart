import 'package:flutter/material.dart';

class  buildGenderSelection extends StatefulWidget {
  const  buildGenderSelection({super.key});

  @override
  State< buildGenderSelection> createState() => _buildGenderSelectionState();
}

class _buildGenderSelectionState extends State< buildGenderSelection> {
   int? _genderValue;
  @override
  Widget build(BuildContext context) {
     return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gender',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: _genderValue,
                onChanged: (int? value) {
                  setState(() {
                    _genderValue = value;
                  });
                },
              ),
              Text('Female'),
              Radio(
                value: 0,
                groupValue: _genderValue,
                onChanged: (int? value) {
                  setState(() {
                    _genderValue = value;
                  });
                },
              ),
              Text('Male'),
              Radio(
                value: 2,
                groupValue: _genderValue,
                onChanged: (int? value) {
                  setState(() {
                    _genderValue = value;
                  });
                },
              ),
              Text('Other'),
            ],
          ),
        ],
      );
    }

  }
