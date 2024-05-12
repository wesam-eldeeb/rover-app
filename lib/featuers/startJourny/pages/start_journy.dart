import 'package:flutter/material.dart';
import 'package:rover_app/featuers/profile/pages/profile_view.dart';
import 'package:rover_app/featuers/startJourny/widgets/build_label_and_textField.dart';

class StartJourny extends StatefulWidget {
  @override
  _StartJournyState createState() => _StartJournyState();
}

class _StartJournyState extends State<StartJourny> {
  int? _genderValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Start Journey',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ProfileView();
              }));
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
          const SizedBox(width: 10.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20.0),
              buildLabelAndTextField(
                  'From', Icons.location_on, 'New York, USA'),
              const SizedBox(height: 20.0),
              buildLabelAndTextField(
                  'To', Icons.location_on, 'Los Angeles, USA'),
              const SizedBox(height: 20.0),
              buildLabelAndTextField('Salary', Icons.attach_money, '\$2000'),
              const SizedBox(height: 20.0),
              buildLabelAndTextField('Time', Icons.access_time, '4:00 PM'),
              const SizedBox(height: 20.0),
              buildLabelAndTextField(
                  'Date', Icons.calendar_today, '2024-05-03'),
              const SizedBox(height: 20.0),
              buildLabelAndTextField(
                  'Plate Number', Icons.directions_car, 'ABC123'),
              const SizedBox(height: 20.0),
              buildLabelAndTextField('Seats available', Icons.event_seat, '2'),
              const SizedBox(height: 20.0),
              buildGenderSelection(),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle save button press
                  print('Selected gender value: $_genderValue');
                },
                child: Text('Save', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGenderSelection() {
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
