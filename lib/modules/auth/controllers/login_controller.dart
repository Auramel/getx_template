import 'package:flutter/cupertino.dart';

import '../../../kernel/controller.dart';

class LoginController extends Controller {
  final TextEditingController loginController = TextEditingController();
  String get login => loginController.text;

  final TextEditingController passwordController = TextEditingController();
  String get password => passwordController.text;

  void onSubmitClicked() {
    
  }

  void onRegisterClicked() {

  }

  void onForgetPasswordClicked() {
    
  }
}
