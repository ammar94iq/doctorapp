import 'package:flutter/material.dart';

import '../../main.dart';
import '../api/crud.dart';
import '../api/links.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider() {
    showAlDiaries();
  }
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  final Crud _crud = Crud();
  String resultMessage = '';

  Future<void> register() async {
    if (firstName.text.isNotEmpty &&
        lastName.text.isNotEmpty &&
        phone.text.isNotEmpty &&
        email.text.isNotEmpty &&
        passwordConfirm.text.isNotEmpty &&
        password.text.isNotEmpty) {
      if (passwordConfirm.text == password.text) {
        final responseBody = await _crud.postRequest(linkRegister, {
          "firstName": firstName.text,
          "lastName": lastName.text,
          "phone": phone.text,
          "email": email.text,
          "password": password.text,
        });
        if (responseBody['status'] == 'success') {
          var lastId = responseBody['lastId'];
          resultMessage = responseBody['status'];
          await sharedPre.setString("userEmail", email.text);
          await sharedPre.setString("userId", lastId.toString());
        } else {
          resultMessage = responseBody['status'];
        }
      } else {
        resultMessage = "not match";
      }
    } else {
      resultMessage = "empty";
    }
  }

  Future<void> logIn() async {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      final responseBody = await _crud.postRequest(linkLogin, {
        "email": email.text,
        "password": password.text,
      });
      print(responseBody);
      if (responseBody['status'] == 'success') {
        var data = responseBody['data'][0];
        resultMessage = responseBody['status'];
        await sharedPre.setString("userId", data['id'].toString());

        await sharedPre.setString("userName", data['firstName']);
        await sharedPre.setString("userEmail", data['email']);
      } else {
        resultMessage = responseBody['status'];
      }
    } else {
      resultMessage = "empty";
    }
  }

  Future<void> addDiary() async {
    if (title.text.isNotEmpty && content.text.isNotEmpty) {
      final responseBody = await _crud.postRequest(linkAddDiary, {
        "title": title.text,
        "content": content.text,
        "userId": sharedPre.getString("userId"),
      });
      if (responseBody['status'] == 'success') {
        title.text = '';
        content.text = '';
        await showAlDiaries();
      }
      resultMessage = responseBody['status'];
    } else {
      resultMessage = "empty";
    }
  }

  List<Map<String, dynamic>> diaries = [];
  Future<void> showAlDiaries() async {
    final responseBody = await _crud.postRequest(linkShowDiaries, {
      "userId": sharedPre.getString("userId"),
    });
    if (responseBody['status'] == 'success') {
      diaries.clear();
      diaries.addAll(List<Map<String, dynamic>>.from(responseBody['data']));
    } else {
      diaries.clear();
      resultMessage = "There is no data on this page";
    }
    notifyListeners();
  }
}
