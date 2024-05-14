import 'package:flutter/material.dart';

class Patients extends StatelessWidget {
  const Patients({super.key});

  @override
  Widget build(BuildContext context) {
    var patients = [
      {'patientName': 'Ream Al-Ghamdi'},
      {'patientName': 'Samaher Al-otibi'},
      {'patientName': 'Walid Al-otibi'},
      {'patientName': 'Neaf Al-harbi'},
      {'patientName': 'Nouf Al-otibi'},
      {'patientName': 'Hamad Al-harbi'},
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Image.asset("images/logo.png", height: 100.0),
          const SizedBox(height: 20.0),
          const Center(
            child: Text(
              "The Patients",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: patients.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.indigo, width: 3.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.note_alt,
                          size: 30.0, color: Colors.indigo),
                      const Icon(Icons.chat_outlined,
                          size: 30.0, color: Colors.indigo),
                      Text(
                        patients[index]['patientName'].toString(),
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
