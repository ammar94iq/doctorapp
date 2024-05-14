import 'package:flutter/material.dart';

class SelectDoctor extends StatelessWidget {
  const SelectDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      {'name': 'Turki Alotibi'},
      {'name': 'Dana Alotibi'},
      {'name': 'Saad Alotibi'},
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Center(
              child: Text(
                "Choose a doctor",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.indigo,
                  ),
                ),
                hintText: 'Choose a doctor',
                border: const OutlineInputBorder(
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
            ListView.separated(
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return const Divider();
              },
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.indigo),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(0.0),
                        leading: const Icon(
                          Icons.person,
                          size: 40.0,
                          color: Colors.indigo,
                        ),
                        title: Text(items[index]['name'].toString()),
                        subtitle: const Text("doctor"),
                      ),
                      const Text(
                          "A social consultant with more than 15 years of experience who handles all social problems"),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Provide Sessions",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.indigo),
                            onPressed: () {},
                            child: const Text("Follow up request"),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }
}
