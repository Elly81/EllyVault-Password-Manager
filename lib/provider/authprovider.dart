import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  AuthProvider() {
    getMasterPassword();
  }
  bool _isObsecured = true;
  bool get isObsecured => _isObsecured;
  set isObsecured(bool value) {
    _isObsecured = value;
    notifyListeners();
  }

  late String _masterpassword;
  String get masterpassword => _masterpassword;
  set masterpassword(String value) {
    _masterpassword = value;
    notifyListeners();
  }

  void savePassword({required String password}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('password', password);
  }

  Future<void> getMasterPassword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    masterpassword = prefs.getString('password') ?? '';
  }

  Future<void> logout() async {
    // 1. Clear any authentication tokens or session data
    // ... your logic to clear authentication data

    // 2. Optionally, communicate with your backend to invalidate the session
    // ... your logic to make a network request to invalidate the session

    notifyListeners(); // Notify listeners about the logout
  }

  Future<void> deleteAccount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('password'); // Remove the master password


    notifyListeners();
  }

}
