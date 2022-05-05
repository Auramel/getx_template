import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/constants.dart';
import '../../../../configs/palette.dart';
import '../../../../widgets/custom_input.dart';
import '../../controllers/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen(): super(key: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Palette.belizehole,
        title: const Text(
          'Auramel Inc.',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Constants.screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CustomInput(
                controller: controller.loginController,
                placeholder: 'Login',
                icon: const Icon(
                  CupertinoIcons.person,
                  color: Palette.clouds,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomInput(
                  controller: controller.passwordController,
                  placeholder: 'Password',
                  isPassword: true,
                  icon: const Icon(
                    CupertinoIcons.padlock,
                    color: Palette.clouds,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: controller.onSubmitClicked,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Palette.belizehole),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Constants.borderRadius),
                      ),
                    ),
                  ),
                  child: const Text('Login'),
                ),
              ),
              OutlinedButton(
                onPressed: controller.onRegisterClicked,
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    const BorderSide(color: Palette.belizehole),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Constants.borderRadius),
                    ),
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Palette.belizehole,
                  ),
                ),
              ),
              TextButton(
                onPressed: controller.onForgetPasswordClicked,
                child: const Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Palette.belizehole,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
