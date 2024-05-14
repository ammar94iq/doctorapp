import 'package:flutter/material.dart';

import 'default.dart';
import 'diary.dart';
import 'profile.dart';
import 'select_doctor.dart';

class PatientNotes extends StatefulWidget {
  const PatientNotes({super.key});

  @override
  State<PatientNotes> createState() => _PatientNotesState();
}

class _PatientNotesState extends State<PatientNotes> {
  int selectedIndex = 3;
  List<Widget> widgetPages = const [
    Profile(),
    SelectDoctor(),
    Diary(),
    Default()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: widgetPages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (value) => setState(() {
          selectedIndex = value;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Doctor'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'My diary'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}
