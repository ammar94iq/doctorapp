import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/auth_provider.dart';

class MyThinking extends StatelessWidget {
  const MyThinking({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<AuthProvider>(context);

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }

    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "My thoughts and thinking",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: model.title,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                hintText: 'Title',
                fillColor: Colors.white,
                filled: true,
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
            SizedBox(height: 10.0),
            TextFormField(
              controller: model.content,
              textInputAction: TextInputAction.next,
              minLines: 1,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Content',
                fillColor: Colors.white,
                filled: true,
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
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () async {
                await model.addDiary();
                if (model.resultMessage == 'success') {
                  showError('Added successfully');
                } else if (model.resultMessage == 'failed') {
                  showError('failed');
                } else {
                  showError('fill all fields');
                }
              },
              child: Text("Save"),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.delete_forever_rounded, color: Colors.white),
                    Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.keyboard_voice_rounded, color: Colors.white),
                    Text(
                      'Voice note',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.edit_calendar, color: Colors.white),
                    Text(
                      'Writing',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
