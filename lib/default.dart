import 'package:flutter/material.dart';

class Default extends StatelessWidget {
  const Default({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      {'name': 'Turki Alotibi'},
      {'name': 'Dana Alotibi'},
      {'name': 'Saad Alotibi'},
    ];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Image.asset("images/logo.png", height: 100.0),
          const SizedBox(height: 20.0),
          Container(
            color: const Color.fromARGB(255, 169, 180, 243).withOpacity(0.5),
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 40.0,
                      color: Colors.indigo,
                    ),
                    Text('Dr.Turki Alotibi'),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.refresh,
                      size: 40.0,
                      color: Colors.indigo,
                    ),
                    Icon(
                      Icons.chat_bubble_outlined,
                      size: 40.0,
                      color: Colors.indigo,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
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
                  ],
                ),
              );
            }),
          ),
          const SizedBox(height: 60.0),
        ],
      ),
    );
  }
}
