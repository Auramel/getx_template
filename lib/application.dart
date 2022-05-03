import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'configs/routes.dart';
import 'modules/auth/ui/screens/login_screen.dart';

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
          fontFamily: 'Inter',
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          )
        ),
        getPages: <GetPage<dynamic>>[
          GetPage<LoginScreen>(
            name: Routes.login,
            page: () => const LoginScreen(),
          ),
        ],
      ),
    );
  }
}
