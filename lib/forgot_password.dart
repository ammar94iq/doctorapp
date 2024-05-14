import 'package:flutter/material.dart';

import 'register.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "New password",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const Center(
                child: Icon(
                  Icons.lock,
                  size: 60.0,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                textAlign: TextAlign.center,
                "Enter your email or phone number and we'll send you a link to change a new password",
                style: TextStyle(
                    color: Colors.indigo, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Phone or Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.indigo,
                  ),
                  child: const Text(
                    "Send",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return const Register();
                      }),
                    ),
                  );
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    color: Colors.indigo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
