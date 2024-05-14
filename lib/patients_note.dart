import 'package:flutter/material.dart';

import 'patients.dart';
import 'profile.dart';

class PatientNotes extends StatefulWidget {
  const PatientNotes({super.key});

  @override
  State<PatientNotes> createState() => _PatientNotesState();
}

class _PatientNotesState extends State<PatientNotes> {
  int selectedIndex = 0;
  List<Widget> widgetPages = const [Profile(), Notes(), Patients()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: widgetPages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.note_alt_outlined), label: 'Patient Notes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups), label: 'The Patients'),
        ],
      ),
    );
  }
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Image.asset(
            "images/logo.png",
            height: 100.0,
          ),
          const SizedBox(height: 10.0),
          Image.asset(
            "images/logo2.png",
            height: 100.0,
          ),
          const SizedBox(height: 10.0),
          const Text(
            "Reem Al-Ghamdi",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Card(
            color: Color.fromARGB(255, 202, 212, 244),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Today is very bad and i am thinking of committing suicide"),
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            "Samaher Al-otibi",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Card(
            color: Color.fromARGB(255, 202, 212, 244),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "I cannot bear life. I would like to kill my father to get rid of all my problems"),
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            "Walid Al-otibi",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Card(
            color: Color.fromARGB(255, 202, 212, 244),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  Text("I want to hit everyone in the house to vent my anger"),
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            "Neaf Al-harbi",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Card(
            color: Color.fromARGB(255, 202, 212, 244),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Today is very bad and i am thinking of committing suicide"),
            ),
          ),
        ],
      ),
    );
  }
}
