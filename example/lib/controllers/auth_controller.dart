import 'package:example/models/auth.dart';
import 'package:flutter/foundation.dart';

class AuthController {
  final auth = Auth();

  final isLogged = ValueNotifier<bool>(false);

  void login() {
    if (auth.validate()) {
      if (auth.username.value == "demo@demo.com" &&
          auth.password.value == "demo") {
        isLogged.value = true;
      }
    }
  }

  void logout() {
    isLogged.value = false;
  }
}
