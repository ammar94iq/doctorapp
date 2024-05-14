import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Image.asset(
              "images/logo.png",
              color: Colors.indigo,
            ),
            const SizedBox(height: 60.0),
            const Center(
                child: Text(
              "welcome to smile days",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )),
            const Center(
              child: Text(
                "Here is your safe and quiet",
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ),
            const Center(
              child: Text(
                "space that paves the way",
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ),
            const Center(
              child: Text(
                "for a better life",
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ),
            const SizedBox(height: 60.0),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const Login();
                    }),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const Register();
                    }),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Center(
              child: Text(
                "Doctor",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
