import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> signup(String email, String password) async {
    final url = Uri.https(
      'identitytoolkit.googleapis.com',
      'v1/accounts:signUp',
      {"key": 'AIzaSyAgNjHMJJy2thtY1YcT60mTAZC3-PuXgg4'},
    );
    final response = await http.post(
      url,
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );
    print(json.decode(response.body));
    notifyListeners();
  }
}
