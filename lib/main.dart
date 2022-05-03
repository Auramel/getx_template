import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'application.dart';
import 'configs/database.dart';

Future<void> main() async {
  await GetStorage.init();

  await registerLicense();
  await initDependencies();
  await registerServices();

  runApp(const Application());
}

Future<void> registerLicense() async {
}

Future<void> initDependencies() async {
  Get.lazyPut<Database>(() => Database());
}

Future<void> registerServices() async {
}
