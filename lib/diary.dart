import 'package:flutter/material.dart';

import 'my_thinking.dart';

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Register a diary",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset("images/logo.png", height: 100.0),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.indigo,
                ),
              ),
              hintText: 'Search in diary',
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
          Text(
            "Today",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            color: Color.fromARGB(255, 191, 199, 241).withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return const MyThinking();
                          }),
                        ),
                      );
                    },
                    child: Text(
                      'My thoughts and thinking',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                      'I have major challenges today in dealing with personal and work stress. I will look for the necccssary support and will speak with the doctor at the next session to discuss how to overcome these challenges'),
                ],
              ),
            ),
          ),
          Text(
            'Yesterday',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            color: Color.fromARGB(255, 191, 199, 241).withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My feelings today',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                      'Today was a difficult day, I felt sad and upset and was unable to control my emations. I tried to stay in the quit environment and spent some time alone'),
                ],
              ),
            ),
          ),
          Text(
            'The past 7 days',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            color: Color.fromARGB(255, 191, 199, 241).withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.0),
                  Text(
                      'Today was a difficult day, I felt sad and upset and was unable to control my emations. I tried to stay in the quit environment and spent some time alone'),
                  SizedBox(height: 10.0),
                  Text(
                      'I have major challenges today in dealing with personal and work stress. I will look for the necccssary support and will speak with the doctor at the next session to discuss how to overcome these challenges'),
                  SizedBox(height: 10.0),
                  Text(
                      'Today was a difficult day, I felt sad and upset and was unable to control my emations. I tried to stay in the quit environment and spent some time alone'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
