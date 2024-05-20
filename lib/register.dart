import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/auth_provider.dart';
import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<AuthProvider>(context);
    void redirect() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                "Please Enter Your Full Name :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                controller: model.firstName,
                decoration: const InputDecoration(
                  hintText: 'Your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Please Enter Your Last Name :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                controller: model.lastName,
                decoration: const InputDecoration(
                  hintText: 'Your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Please Enter Your Phone Number :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                controller: model.phone,
                decoration: const InputDecoration(
                  hintText: 'Your Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Please Enter Your Email :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                controller: model.email,
                decoration: const InputDecoration(
                  hintText: 'Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Please Enter Your Password :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                controller: model.password,
                decoration: const InputDecoration(
                  hintText: 'Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Confirm Your Password :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                controller: model.passwordConfirm,
                decoration: const InputDecoration(
                  hintText: 'Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              InkWell(
                onTap: () async {
                  await model.register();
                  if (model.resultMessage == 'success') {
                    redirect();
                  } else if (model.resultMessage == 'find') {
                    showError(
                        'There is an account with this email, please choose another email');
                  } else if (model.resultMessage == 'failed') {
                    showError('Account set-up failure');
                  } else if (model.resultMessage == 'not match') {
                    showError('Please check that the passwords match');
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
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
