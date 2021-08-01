import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Draw extends StatefulWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  String dropdownValue = 'About HUE';
  String dropdownValue1 = 'Students';
  String dropdownValue2 = 'Faculties';
  String dropdownValue3 = 'HUE Centers';
  String dropdownValue4 = 'Media';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(182, 139, 26, 1),
        child: ListView(
          children: [
            ListTile(
              minLeadingWidth: 20,
              title: Text(
                "Home",
                style: GoogleFonts.robotoSlab(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: DropdownButton<String>(
                focusColor: const Color.fromRGBO(32, 17, 98, 1),
                autofocus: true,
                alignment: Alignment.center,
                dropdownColor: const Color.fromRGBO(182, 139, 26, 1),
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: GoogleFonts.robotoSlab(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'About HUE',
                  'HUE at a Glance',
                  'Vision & Mission',
                  'HUE Administration',
                  'Strategic Plan',
                  'Organization'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11),
              child: DropdownButton<String>(
                alignment: Alignment.centerLeft,
                dropdownColor: const Color.fromRGBO(182, 139, 26, 1),
                value: dropdownValue1,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: GoogleFonts.robotoSlab(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue1 = newValue!;
                  });
                },
                items: <String>[
                  'Students',
                  'Student Activity',
                  'Student Services',
                  'Advising',
                  'Admission',
                  'Distance Learning',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11),
              child: DropdownButton<String>(
                alignment: Alignment.centerLeft,
                dropdownColor: const Color.fromRGBO(182, 139, 26, 1),
                value: dropdownValue2,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: GoogleFonts.robotoSlab(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue2 = newValue!;
                  });
                },
                items: <String>[
                  'Faculties',
                  'Dentistry',
                  'Pharmacy',
                  'Physical Therapy',
                  'Engineering',
                  'Business Administration',
                  'Medicine'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: DropdownButton<String>(
                alignment: Alignment.centerLeft,
                dropdownColor: const Color.fromRGBO(182, 139, 26, 1),
                value: dropdownValue3,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: GoogleFonts.robotoSlab(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue3 = newValue!;
                  });
                },
                items: <String>[
                  'HUE Centers',
                  'International Student Office',
                  'Quality Assurance',
                  'International Projects & Relations Office',
                  'Training & E-Learning'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11),
              child: DropdownButton<String>(
                alignment: Alignment.centerLeft,
                dropdownColor: const Color.fromRGBO(182, 139, 26, 1),
                value: dropdownValue4,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: GoogleFonts.robotoSlab(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue4 = newValue!;
                  });
                },
                items: <String>[
                  'Media',
                  'Latest News',
                  'HUE in Motion',
                  'Photo Gallery'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
