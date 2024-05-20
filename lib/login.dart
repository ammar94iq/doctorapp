import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/auth_provider.dart';
import 'forgot_password.dart';
import 'patients_note.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<AuthProvider>(context);
    void redirect() {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: ((context) {
            return const PatientNotes();
          }),
        ),
        (route) => false,
      );
    }

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              "Log In",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 30.0),
            TextFormField(
              controller: model.email,
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
            TextFormField(
              controller: model.password,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.indigo,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60.0),
            InkWell(
              onTap: () async {
                await model.logIn();
                if (model.resultMessage == 'success') {
                  redirect();
                } else if (model.resultMessage == 'failed') {
                  showError('Login failure');
                } else {
                  showError('fill all fields');
                }
              },
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
                  "Log in",
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
                      return const ForgotPassword();
                    }),
                  ),
                );
              },
              child: const Text(
                "Forgot password?",
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
