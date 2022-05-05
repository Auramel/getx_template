import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../configs/constants.dart';
import '../../../../configs/palette.dart';
import '../../../../widgets/custom_input.dart';
import '../../controllers/forget_password_controller.dart';

class ForgetPasswordScreen extends GetView<ForgetPasswordController> {
  const ForgetPasswordScreen(): super(key: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Palette.belizehole,
        title: const Text('Recovery account'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Constants.screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomInput(
                  controller: controller.phoneController,
                  placeholder: 'Phone',
                  icon: const Icon(
                    CupertinoIcons.phone,
                    color: Palette.clouds,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    MaskTextInputFormatter(
                      mask: '+# (###) ###-##-##', 
                      filter: <String, RegExp>{
                          '#': RegExp(r'[0-9]'),
                      },
                    ),
                  ],
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
                  child: const Text('Get sms with code'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
