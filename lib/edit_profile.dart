import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              color: Colors.indigo,
              width: double.infinity,
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 40.0,
                        color: Colors.indigo,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("First Name :"),
                            const SizedBox(height: 5.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Your Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Last Name :"),
                            const SizedBox(height: 5.0),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Your Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const Text("Email :"),
                  const SizedBox(height: 5.0),
                  TextFormField(
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
                  const Text("Phone Number :"),
                  const SizedBox(height: 5.0),
                  TextFormField(
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
                  const Text("Password :"),
                  const SizedBox(height: 5.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Your Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),
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
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
