import 'package:flutter/cupertino.dart';

import '../../../kernel/controller.dart';

class ForgetPasswordController extends Controller {
  final TextEditingController phoneController = TextEditingController();
  String get phone => phoneController.text;

  void onSubmitClicked() {

  }
}
