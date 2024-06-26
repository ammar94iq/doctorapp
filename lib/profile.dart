import 'package:flutter/material.dart';

import 'edit_profile.dart';
import 'home.dart';
import 'main.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.indigo,
          width: double.infinity,
          padding: const EdgeInsets.all(30.0),
          child: const Column(
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 40.0,
                  color: Colors.indigo,
                ),
              ),
              Text(
                'Name',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  return const EditProfile();
                }),
              ),
            );
          },
          leading: const Icon(
            Icons.person,
            color: Colors.indigo,
          ),
          title: const Text('Edit profile'),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.comment_bank),
          title: const Text("Doctor's comments"),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.note_alt_rounded),
          title: const Text('Reports'),
        ),
        const SizedBox(height: 20.0),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  sharedPre.clear();
                  return const Home();
                }),
              ),
            );
          },
          icon: const Icon(
            Icons.logout,
            size: 30.0,
            color: Colors.indigo,
          ),
          label: const Text(
            'Log out',
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
