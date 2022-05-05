import 'package:flutter/cupertino.dart';

import '../../../kernel/controller.dart';

class RegisterController extends Controller {
  final TextEditingController loginController = TextEditingController();
  String get login => loginController.text;

  final TextEditingController passwordController = TextEditingController();
  String get password => passwordController.text;

  final TextEditingController phoneController = TextEditingController();
  String get phone => phoneController.text;

  void onSubmitClicked() {
    
  }
}
