import 'package:flutter/material.dart';
import 'package:flutter_pab/models/user_model.dart';
import 'package:flutter_pab/services/auth_services.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel get user => _user!;
  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        email: email,
        name: name,
        password: password,
      );
      _user = user;
      return true;
    } catch (e) {
      print(e);
      print('GAGAL');
      return false;
    }
  }

  Future<bool> login({required String email, required String password}) async {
    try {
      UserModel user =
          await AuthService().login(email: email, password: password);
      _user = user;
      // PasienModel pasien = await HomeService().getHome(user.authToken!);
      // _pasien = pasien;
      return true;
    } catch (e) {
      print(e);
      print('GAGAL LOGIN');
      return false;
    }
  }

  Future sessionLogin(String token) async {
    try {
      UserModel user = UserModel();
      user.authToken = token;
      _user = user;
    } catch (e) {
      print(e);
    }
  }
}
