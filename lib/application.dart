import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'configs/routes.dart';
import 'modules/auth/bindings/forget_password_bindings.dart';
import 'modules/auth/bindings/login_bindings.dart';
import 'modules/auth/bindings/register_bindings.dart';
import 'modules/auth/ui/screens/forget_password_screen.dart';
import 'modules/auth/ui/screens/login_screen.dart';
import 'modules/auth/ui/screens/register_screen.dart';

class Application extends StatelessWidget {
  const Application(): super(key: null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.login,
        locale: const Locale('ru'),
        supportedLocales: const <Locale>[
          Locale('ru'),
        ],
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          RefreshLocalizations.delegate,
        ],
        theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blueGrey,
        ),
        getPages: <GetPage<dynamic>>[
          GetPage<LoginScreen>(
            binding: LoginBindings(),
            name: Routes.login,
            page: () => const LoginScreen(),
          ),
          GetPage<RegisterScreen>(
            binding: RegisterBindings(),
            name: Routes.register,
            page: () => const RegisterScreen(),
          ),
          GetPage<ForgetPasswordScreen>(
            binding: ForgetPasswordBindings(),
            name: Routes.forgetPassword,
            page: () => const ForgetPasswordScreen(),
          ),
        ],
      ),
    );
  }
}
